# Página de revisión (solo lectura) de AulaPredict.
#
# Requisitos: Python 3.10 o superior, y MySQL o MariaDB con la base Proyecto
# (las tablas Alumnos, Materias y Alumnos_Materias ya creadas y con datos).
#
# En cmd, dentro de esta carpeta:
#   py -m pip install flask mysql-connector-python
#   py revision.py
#
# Abra en el navegador http://127.0.0.1:5000
# Para detener la página, presione Ctrl+C.
#
# Si su usuario o contraseña son distintos, cámbielos en las constantes
# de abajo o defina MYSQL_HOST, MYSQL_PORT, MYSQL_USER, MYSQL_PASSWORD
# y MYSQL_DATABASE.
#
# El buscador interpreta 1 a 9 cifras como número de alumno (id_alumno)
# y exactamente 10 cifras como boleta. En los datos de esta versión las
# boletas tienen 10 dígitos y no coinciden con los números de alumno.

import os

import mysql.connector
from flask import Flask, abort, g, redirect, render_template_string, request, url_for
from jinja2 import DictLoader

# Valores por omisión: un MySQL local típico.
# Si su usuario o contraseña son distintos, cámbielos aquí
# o defina MYSQL_HOST, MYSQL_PORT, MYSQL_USER, MYSQL_PASSWORD y MYSQL_DATABASE.
HOST = "localhost"
PUERTO = 3306
USUARIO = "root"
CONTRASENA = ""  # escriba aquí su contraseña de MySQL
BASE = "Proyecto"

MAX_CIFRAS_ID = 9
CIFRAS_BOLETA = 10

_MENSAJE_500 = (
    "Revise que MySQL esté encendido y que los datos de conexión "
    "de revision.py o de las variables MYSQL_* sean correctos."
)
_MSG_VACIO = "Escriba el número del alumno o la boleta que quiere buscar."
_MSG_FORMATO = ("El número debe ser un entero positivo, sin letras, "
                "signos ni decimales (por ejemplo, 12).")
_MSG_LARGO = ("El número de alumno o la boleta debe tener 10 cifras o menos "
              "(por ejemplo, 12).")

# Promedio de todos los parciales capturados (los vacíos no cuentan).
_PROMEDIO = """
    ROUND(
        SUM(COALESCE(am.parcial_1, 0) + COALESCE(am.parcial_2, 0) + COALESCE(am.parcial_3, 0))
        / NULLIF(SUM((am.parcial_1 IS NOT NULL) + (am.parcial_2 IS NOT NULL)
                     + (am.parcial_3 IS NOT NULL)), 0),
    2)
"""

# Todas las columnas de Alumnos que no son agregadas (ONLY_FULL_GROUP_BY).
_GRUPO_ALUMNO = """a.id_alumno, a.boleta, a.nombre, a.carrera, a.trabaja, a.traslado,
               a.total_materias, a.cantidad_materias, a.porcentaje_materias"""

_ORDEN_SQL = {
    "nombre": "a.nombre ASC, a.id_alumno ASC",
    "numero": "a.id_alumno ASC",
    "boleta": "a.boleta ASC, a.id_alumno ASC",
    "promedio": "promedio IS NULL ASC, promedio DESC, a.id_alumno ASC",
}

# ---------------------------------------------------------------------------
# Conexión y consultas (solo lectura)
# ---------------------------------------------------------------------------

def obtener_conexion():
    """Abre una conexión por petición, en modo solo lectura, y la guarda en g."""
    if "conexion" not in g:
        conexion = mysql.connector.connect(
            host=os.environ.get("MYSQL_HOST", HOST),
            port=int(os.environ.get("MYSQL_PORT", PUERTO)),
            user=os.environ.get("MYSQL_USER", USUARIO),
            password=os.environ.get("MYSQL_PASSWORD", CONTRASENA),
            database=os.environ.get("MYSQL_DATABASE", BASE),
            charset="utf8mb4",
            use_unicode=True,
        )
        cur = conexion.cursor()
        cur.execute("SET SESSION TRANSACTION READ ONLY")
        cur.close()
        g.conexion = conexion
    return g.conexion


def cerrar_conexion(error=None):
    conexion = g.pop("conexion", None)
    if conexion is not None and conexion.is_connected():
        conexion.close()


def _consultar(sql, parametros=()):
    cur = obtener_conexion().cursor(dictionary=True)
    try:
        cur.execute(sql, parametros)
        return cur.fetchall()
    finally:
        cur.close()


def _escape_like(texto):
    return (texto.replace("\\", "\\\\")
                 .replace("%", "\\%")
                 .replace("_", "\\_"))


def listar_alumnos(filtro="", orden="nombre"):
    """Alumnos con su promedio de parciales; filtro y orden opcionales (GET)."""
    if orden not in _ORDEN_SQL:
        orden = "nombre"
    where = ""
    parametros = []
    if filtro:
        where = "WHERE a.nombre LIKE %s ESCAPE '\\\\' OR a.boleta LIKE %s ESCAPE '\\\\'"
        pieza = "%" + _escape_like(filtro) + "%"
        parametros = [pieza, pieza]
    return _consultar(f"""
        SELECT {_GRUPO_ALUMNO},
               COUNT(am.id_materia) AS registradas,
               {_PROMEDIO} AS promedio
        FROM Alumnos a
        LEFT JOIN Alumnos_Materias am ON am.id_alumno = a.id_alumno
        {where}
        GROUP BY {_GRUPO_ALUMNO}
        ORDER BY {_ORDEN_SQL[orden]}
    """, parametros)


def _obtener_alumno_donde(condicion, parametros):
    filas = _consultar(f"""
        SELECT {_GRUPO_ALUMNO},
               COUNT(am.id_materia) AS registradas,
               {_PROMEDIO} AS promedio
        FROM Alumnos a
        LEFT JOIN Alumnos_Materias am ON am.id_alumno = a.id_alumno
        WHERE {condicion}
        GROUP BY {_GRUPO_ALUMNO}
    """, parametros)
    return filas[0] if filas else None


def obtener_alumno(id_alumno):
    return _obtener_alumno_donde("a.id_alumno = %s", (id_alumno,))


def obtener_alumno_por_boleta(boleta):
    return _obtener_alumno_donde("a.boleta = %s", (boleta,))


def materias_de_alumno(id_alumno):
    """Las evaluaciones de un alumno, con el nombre y grupo de cada materia."""
    return _consultar("""
        SELECT m.id_materia, m.nombre_materia, m.grupo,
               am.parcial_1, am.parcial_2, am.parcial_3,
               ROUND((COALESCE(am.parcial_1, 0) + COALESCE(am.parcial_2, 0)
                      + COALESCE(am.parcial_3, 0))
                     / NULLIF((am.parcial_1 IS NOT NULL) + (am.parcial_2 IS NOT NULL)
                              + (am.parcial_3 IS NOT NULL), 0), 2) AS promedio,
               am.total_clases, am.asistencias, am.porcentaje_asistencias,
               am.total_participaciones, am.participaciones, am.porcentaje_participaciones,
               am.total_tareas, am.tareas, am.porcentaje_tareas,
               am.recursa, am.notas
        FROM Alumnos_Materias am
        JOIN Materias m ON m.id_materia = am.id_materia
        WHERE am.id_alumno = %s
        ORDER BY m.id_materia
    """, (id_alumno,))


def contar():
    fila = _consultar("""
        SELECT (SELECT COUNT(*) FROM Alumnos) AS alumnos,
               (SELECT COUNT(*) FROM Materias) AS materias,
               (SELECT COUNT(*) FROM Alumnos_Materias) AS evaluaciones,
               (SELECT MIN(id_alumno) FROM Alumnos) AS primero,
               (SELECT MAX(id_alumno) FROM Alumnos) AS ultimo
    """)
    return fila[0]


# ---------------------------------------------------------------------------
# Plantillas y estilo (todo en este archivo)
# ---------------------------------------------------------------------------

_CSS = """
:root {
  --guinda: #6c1d45;
  --texto: #2a2d33;
  --suave: #f4f5f7;
  --borde: #d5d8de;
  --error: #8b1e1e;
  --error-fondo: #fdecec;
}
* { box-sizing: border-box; }
body {
  margin: 0;
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
  color: var(--texto);
  line-height: 1.45;
}
main { max-width: 1200px; margin: 0 auto; padding: 1.5rem 1.5rem 3rem; }
footer {
  border-top: 1px solid var(--borde);
  color: #666; font-size: 0.9rem; text-align: center; padding: 1rem;
}
h1, h2 { color: var(--guinda); }
.titulo { text-align: center; margin: 0.5rem 0 0.4rem; font-size: 1.9rem; }
.resumen { text-align: center; color: #555; margin-top: 0; }
a { color: var(--guinda); }
.tabla-envoltura { overflow-x: auto; }
.tabla-lista { max-height: 70vh; overflow: auto; }
table { border-collapse: collapse; width: 100%; margin: 1rem 0; font-size: 0.95rem; }
th, td { border: 1px solid var(--borde); padding: 0.45rem 0.6rem; text-align: left; vertical-align: top; }
thead th {
  background: var(--guinda); color: #fff; text-align: center;
  position: sticky; top: 0; z-index: 2;
}
thead th a { color: #fff; text-decoration: underline; }
tbody tr:nth-child(even) { background: var(--suave); }
td.num { text-align: right; white-space: nowrap; }
th.numero, td.numero, th.boleta, td.boleta { white-space: nowrap; }
th.nombre, td.nombre { min-width: 14rem; }
td.reprobado { color: var(--error); font-weight: 700; }
small { font-weight: normal; }
table.ficha { width: auto; min-width: 22rem; }
table.ficha th { background: var(--suave); width: 18rem; }
.ayuda { color: #555; font-size: 0.9rem; }
.filtro form { display: flex; gap: 0.6rem; align-items: center; flex-wrap: wrap; margin: 0.8rem 0; }
.filtro input { padding: 0.45rem 0.6rem; font-size: 1rem; width: 16rem;
  border: 1px solid var(--borde); border-radius: 4px; }
.filtro button, .filtro .boton {
  padding: 0.5rem 1rem; font-size: 1rem; border: 0; border-radius: 4px;
  background: var(--guinda); color: #fff; cursor: pointer; text-decoration: none;
}
.filtro .boton.secundario { background: #666; }
.buscador {
  border: 1px solid var(--borde); border-radius: 6px;
  padding: 1rem 1.2rem; margin-top: 2rem; background: var(--suave);
}
.buscador h2 { margin-top: 0; }
.buscador form { display: flex; gap: 0.6rem; align-items: center; flex-wrap: wrap; }
.buscador input { padding: 0.45rem 0.6rem; font-size: 1rem; width: 10rem;
  border: 1px solid var(--borde); border-radius: 4px; }
.buscador input[aria-invalid="true"] { border-color: var(--error); }
.buscador button {
  padding: 0.5rem 1rem; font-size: 1rem; border: 0; border-radius: 4px;
  background: var(--guinda); color: #fff; cursor: pointer;
}
.mensaje.error {
  background: var(--error-fondo); color: var(--error);
  border-left: 4px solid var(--error); padding: 0.6rem 0.8rem; margin: 0.8rem 0;
}
.mensaje.error a { color: var(--error); }
""".strip()

_BASE = """<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{% block titulo %}AulaPredict — Revisión de datos{% endblock %}</title>
  <style>""" + _CSS + """</style>
</head>
<body>
  <main>
    {% block contenido %}{% endblock %}
  </main>
  <footer>
    <p>AulaPredict — página de consulta. Aquí no se agregan, cambian ni borran datos.</p>
  </footer>
</body>
</html>
"""

_BUSCADOR = """
<section class="buscador" id="buscador">
  <h2>Buscador</h2>
  <form action="{{ url_for('buscar') }}#buscador" method="get">
    <label for="numero">Número de alumno o boleta</label>
    <input type="text" id="numero" name="numero" inputmode="numeric" maxlength="10"
           autocomplete="off" value="{{ numero or '' }}"
           {% if error %}aria-invalid="true" aria-describedby="error-buscador"{% endif %}>
    {% if a is defined and a %}
    <input type="hidden" name="origen" value="{{ a.id_alumno }}">
    {% elif origen %}
    <input type="hidden" name="origen" value="{{ origen }}">
    {% endif %}
    <button type="submit">Buscar</button>
  </form>
  {% if error %}
    <p class="mensaje error" id="error-buscador" role="alert">{{ error }}</p>
  {% endif %}
  <p class="ayuda">Escriba el número que aparece en la columna Número o la boleta del alumno.
    Un número de 1 a 9 cifras se busca como número de alumno; uno de 10 cifras, como boleta.</p>
</section>
"""

_INICIO = """{% extends "base.html" %}
{% block contenido %}
  <h1 class="titulo">AulaPredict — Revisión de datos</h1>
  <p class="resumen">{{ totales.alumnos }} alumnos · {{ totales.materias }} materias ·
    {{ totales.evaluaciones }} evaluaciones registradas.
    <a href="#buscador">Ir al buscador</a></p>

  <div class="filtro">
    <form action="{{ url_for('inicio') }}" method="get">
      <label for="q">Filtrar por nombre o boleta</label>
      <input type="text" id="q" name="q" value="{{ q or '' }}" maxlength="80" autocomplete="off">
      {% if orden and orden != 'nombre' %}
      <input type="hidden" name="orden" value="{{ orden }}">
      {% endif %}
      <button type="submit">Filtrar</button>
      {% if q %}
      <a class="boton secundario" href="{{ url_for('inicio', orden=orden if orden != 'nombre' else None) }}">Quitar filtro</a>
      {% endif %}
    </form>
    {% if q %}
    <p class="ayuda">Mostrando {{ alumnos|length }} de {{ totales.alumnos }} alumnos.</p>
    {% endif %}
  </div>

  <div class="tabla-envoltura tabla-lista">
  <table>
    <thead>
      <tr>
        <th scope="col" class="nombre"><a href="{{ url_for('inicio', orden='nombre', q=q or None) }}">Nombre</a></th>
        <th scope="col"><a href="{{ url_for('inicio', orden='promedio', q=q or None) }}">Notas</a><br><small>(promedio de parciales)</small></th>
        <th scope="col" class="numero"><a href="{{ url_for('inicio', orden='numero', q=q or None) }}">Número</a></th>
        <th scope="col" class="boleta"><a href="{{ url_for('inicio', orden='boleta', q=q or None) }}">Boleta</a></th>
        <th scope="col">Carrera</th>
        <th scope="col">Trabaja</th>
        <th scope="col">Traslado</th>
        <th scope="col">Materias<br><small>(cursa / total)</small></th>
        <th scope="col">Ver</th>
      </tr>
    </thead>
    <tbody>
      {% for a in alumnos %}
      <tr>
        <td class="nombre"><a href="{{ url_for('alumno', id_alumno=a.id_alumno) }}">{{ a.nombre }}</a></td>
        <td class="num">{{ a.promedio | nota }}</td>
        <td class="num numero">{{ a.id_alumno }}</td>
        <td class="boleta">{{ a.boleta }}</td>
        <td>{{ a.carrera }}</td>
        <td>{{ a.trabaja | si_no }}</td>
        <td>{{ a.traslado | si_no }}</td>
        <td class="num">{{ a.cantidad_materias }} / {{ a.total_materias }}</td>
        <td><a href="{{ url_for('alumno', id_alumno=a.id_alumno) }}">Ver</a></td>
      </tr>
      {% else %}
      <tr><td colspan="9">{% if q %}Ningún alumno coincide con ese filtro.{% else %}Todavía no hay alumnos en la base de datos.{% endif %}</td></tr>
      {% endfor %}
    </tbody>
  </table>
  </div>
  <p class="ayuda">«Notas (promedio de parciales)» es la media de todos los parciales capturados del alumno, con 2 decimales, y «—» si no hay ninguno; no es el campo notas de la base.
    Haga clic en Nombre, Notas, Número o Boleta para ordenar la tabla. La cabecera permanece visible al desplazarse.</p>

  {% include "buscador.html" %}
{% endblock %}
"""

_ALUMNO = """{% extends "base.html" %}
{% block titulo %}{{ a.nombre }} — AulaPredict{% endblock %}
{% block contenido %}
  <p><a href="{{ url_for('inicio') }}">← Volver a la tabla de alumnos</a></p>
  <h1 class="titulo" id="ficha">{{ a.nombre }}</h1>

  <table class="ficha">
    <tbody>
      <tr><th scope="row">Número</th><td>{{ a.id_alumno }}</td></tr>
      <tr><th scope="row">Boleta</th><td>{{ a.boleta }}</td></tr>
      <tr><th scope="row">Carrera</th><td>{{ a.carrera }}</td></tr>
      <tr><th scope="row">Trabaja</th><td>{{ a.trabaja | si_no }}</td></tr>
      <tr><th scope="row">Traslado</th><td>{{ a.traslado | si_no }}</td></tr>
      <tr><th scope="row">Materias que cursa / total</th>
          <td>{{ a.cantidad_materias }} / {{ a.total_materias }}
              ({{ a.porcentaje_materias | porcentaje }})</td></tr>
      <tr><th scope="row">Materias con evaluación registrada</th><td>{{ a.registradas }}</td></tr>
      <tr><th scope="row">Notas (promedio general)</th><td>{{ a.promedio | nota }}</td></tr>
    </tbody>
  </table>

  <h2>Materias</h2>
  {% if materias %}
  <div class="tabla-envoltura">
  <table>
    <thead>
      <tr>
        <th scope="col">Materia</th>
        <th scope="col">Grupo</th>
        <th scope="col">Parcial 1</th>
        <th scope="col">Parcial 2</th>
        <th scope="col">Parcial 3</th>
        <th scope="col">Promedio</th>
        <th scope="col">Asistencias</th>
        <th scope="col">Participaciones</th>
        <th scope="col">Tareas</th>
        <th scope="col">Recursa</th>
        <th scope="col">Campo notas (sí/no)</th>
      </tr>
    </thead>
    <tbody>
      {% for m in materias %}
      <tr>
        <td>{{ m.nombre_materia }}</td>
        <td>{{ m.grupo }}</td>
        <td class="num{% if m.parcial_1 is not none and m.parcial_1 < 6 %} reprobado{% endif %}">{{ m.parcial_1 | nota }}</td>
        <td class="num{% if m.parcial_2 is not none and m.parcial_2 < 6 %} reprobado{% endif %}">{{ m.parcial_2 | nota }}</td>
        <td class="num{% if m.parcial_3 is not none and m.parcial_3 < 6 %} reprobado{% endif %}">{{ m.parcial_3 | nota }}</td>
        <td class="num{% if m.promedio is not none and m.promedio < 6 %} reprobado{% endif %}">{{ m.promedio | nota }}</td>
        <td class="num">{{ m.asistencias }} / {{ m.total_clases }}<br><small>{{ m.porcentaje_asistencias | porcentaje }}</small></td>
        <td class="num">{{ m.participaciones }} / {{ m.total_participaciones }}<br><small>{{ m.porcentaje_participaciones | porcentaje }}</small></td>
        <td class="num">{{ m.tareas }} / {{ m.total_tareas }}<br><small>{{ m.porcentaje_tareas | porcentaje }}</small></td>
        <td>{{ m.recursa | si_no }}</td>
        <td>{{ m.notas | si_no }}</td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
  </div>
  <p class="ayuda">Los parciales y los promedios menores a 6 aparecen en rojo (6 es la calificación mínima aprobatoria).
    «Notas (promedio general)» es la media de todos los parciales capturados, con 2 decimales, y «—» si no hay ninguno; no es el campo notas de la base.
    La columna «Campo notas (sí/no)» muestra el valor sí/no que está guardado en la base para esa materia.</p>
  {% else %}
  <p>Este alumno todavía no tiene materias con evaluación registrada.</p>
  {% endif %}

  {% include "buscador.html" %}
{% endblock %}
"""

_ERROR = """{% extends "base.html" %}
{% block titulo %}{{ titulo }} — AulaPredict{% endblock %}
{% block contenido %}
  <h1 class="titulo">{{ titulo }}</h1>
  <p>{{ mensaje }}</p>
  {% if mostrar_buscador %}
    {% include "buscador.html" %}
  {% endif %}
  <p><a href="{{ url_for('inicio') }}">← Volver a la tabla de alumnos</a>{% if origen %}
    · <a href="{{ url_for('alumno', id_alumno=origen) }}">Volver a la ficha</a>{% endif %}</p>
{% endblock %}
"""

PLANTILLAS = {
    "base.html": _BASE,
    "buscador.html": _BUSCADOR,
    "inicio.html": _INICIO,
    "alumno.html": _ALUMNO,
    "error.html": _ERROR,
}

app = Flask(__name__)
app.jinja_loader = DictLoader(PLANTILLAS)
app.teardown_appcontext(cerrar_conexion)


@app.after_request
def cabeceras_seguridad(respuesta):
    respuesta.headers["X-Content-Type-Options"] = "nosniff"
    respuesta.headers["X-Frame-Options"] = "DENY"
    # El estilo va en un <style> interno; hay que permitirlo en la CSP.
    respuesta.headers["Content-Security-Policy"] = "default-src 'self'; style-src 'self' 'unsafe-inline'"
    return respuesta


@app.template_filter("porcentaje")
def filtro_porcentaje(valor):
    return "—" if valor is None else f"{float(valor):.2f} %"


@app.template_filter("nota")
def filtro_nota(valor):
    return "—" if valor is None else f"{float(valor):.2f}"


@app.template_filter("si_no")
def filtro_si_no(valor):
    if valor is None:
        return "—"
    return "Sí" if valor else "No"


def _corto(texto, maximo=20):
    texto = str(texto)
    return texto[:maximo] + "…" if len(texto) > maximo else texto


def _mostrar(plantilla, **ctx):
    return render_template_string(PLANTILLAS[plantilla], **ctx)


def _pagina_error(codigo, titulo, mensaje, numero="", error=None,
                  origen=None, mostrar_buscador=False):
    return _mostrar(
        "error.html", titulo=titulo, mensaje=mensaje,
        numero=numero, error=error, origen=origen,
        mostrar_buscador=mostrar_buscador,
    ), codigo


@app.errorhandler(404)
def error_404(error):
    return _pagina_error(404, "Página no encontrada",
                         "La dirección que abrió no existe en esta página.")


@app.errorhandler(405)
def error_405(error):
    return _pagina_error(405, "Acción no permitida",
                         "Esta página solo sirve para consultar datos; no se pueden enviar cambios.")


@app.errorhandler(mysql.connector.Error)
def error_base(error):
    app.logger.exception("Error de la base de datos")
    return _pagina_error(500, "No se pudo leer la base de datos", _MENSAJE_500)


@app.errorhandler(500)
def error_500(error):
    app.logger.exception("Error interno")
    return _pagina_error(500, "Error interno", _MENSAJE_500)


def _orden_y_filtro():
    orden = request.args.get("orden", "nombre")
    if orden not in _ORDEN_SQL:
        orden = "nombre"
    q = request.args.get("q", "").strip()[:80]
    return q, orden


def _inicio(numero="", error=None, codigo=200):
    q, orden = _orden_y_filtro()
    return _mostrar("inicio.html", alumnos=listar_alumnos(q, orden),
                    totales=contar(), numero=numero, error=error,
                    q=q, orden=orden), codigo


def _origen_peticion():
    texto = request.args.get("origen", "").strip()
    if texto.isascii() and texto.isdigit():
        canon = str(int(texto))
        if 1 <= len(canon) <= MAX_CIFRAS_ID:
            return canon
    return None


def _ficha_con_error(origen, numero, error, codigo):
    """Si la búsqueda se hizo desde una ficha, muestra el error en esa misma ficha."""
    datos = None
    if origen:
        datos = obtener_alumno(int(origen))
    if datos is None:
        return _inicio(numero, error, codigo)
    return _mostrar(
        "alumno.html", a=datos,
        materias=materias_de_alumno(datos["id_alumno"]),
        numero=numero, error=error,
    ), codigo


@app.route("/")
def inicio():
    return _inicio()


@app.route("/buscar")
def buscar():
    """Busca un alumno por id_alumno (1 a 9 cifras) o por boleta (10 cifras)."""
    texto = request.args.get("numero", "").strip()
    origen = _origen_peticion()
    if not texto:
        return _pagina_error(400, "Búsqueda no válida", _MSG_VACIO,
                             numero=texto, error=_MSG_VACIO, origen=origen,
                             mostrar_buscador=True)
    if not texto.isascii() or not texto.isdigit():
        return _pagina_error(400, "Búsqueda no válida", _MSG_FORMATO,
                             numero=texto, error=_MSG_FORMATO, origen=origen,
                             mostrar_buscador=True)
    if len(texto) > CIFRAS_BOLETA:
        return _pagina_error(400, "Búsqueda no válida", _MSG_LARGO,
                             numero=texto, error=_MSG_LARGO, origen=origen,
                             mostrar_buscador=True)
    if len(texto) == CIFRAS_BOLETA:
        datos = obtener_alumno_por_boleta(texto)
        if datos is None:
            msg = f"No hay ningún alumno con la boleta {_corto(texto)}."
            if origen:
                return _ficha_con_error(origen, texto, msg, 404)
            return _inicio(texto, msg, 404)
        return redirect(url_for("alumno", id_alumno=datos["id_alumno"], _anchor="ficha"))
    cifras = texto.lstrip("0") or "0"
    datos = obtener_alumno(int(cifras))
    if datos is None:
        msg = f"No hay ningún alumno con el número {_corto(cifras)}."
        if origen:
            return _ficha_con_error(origen, texto, msg, 404)
        return _inicio(texto, msg, 404)
    return redirect(url_for("alumno", id_alumno=datos["id_alumno"], _anchor="ficha"))


@app.route("/alumno/<id_alumno>")
def alumno(id_alumno):
    if not id_alumno.isascii() or not id_alumno.isdigit():
        abort(404)
    canon = str(int(id_alumno))
    if id_alumno != canon:
        return redirect(url_for("alumno", id_alumno=canon))
    datos = obtener_alumno(int(canon)) if len(canon) <= MAX_CIFRAS_ID else None
    if datos is None:
        return _pagina_error(
            404, "Alumno no encontrado",
            f"No hay ningún alumno con el número {_corto(canon)}.")
    return _mostrar("alumno.html", a=datos,
                    materias=materias_de_alumno(int(canon)),
                    numero="", error=None)


if __name__ == "__main__":
    app.run(host="127.0.0.1", port=5000, debug=os.environ.get("FLASK_DEBUG") == "1")
