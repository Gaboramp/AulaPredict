# Conexión y consultas a la base original de AulaPredict (MySQL o MariaDB).

import os

import mysql.connector
from flask import current_app, g

# Valores por omisión: un MySQL local típico.
# Si tu usuario o contraseña son distintos, cámbialos aquí
# o define MYSQL_HOST, MYSQL_PORT, MYSQL_USER, MYSQL_PASSWORD y MYSQL_DATABASE.
HOST = "localhost"
PUERTO = 3306
USUARIO = "root"
CONTRASENA = ""  # pon aquí tu contraseña de MySQL
BASE = "Proyecto"

_COLS_ALUMNO = (
    "boleta", "nombre", "carrera", "trabaja", "traslado",
    "total_materias", "cantidad_materias",
)
_COLS_MATERIA = ("nombre_materia", "grupo")
_COLS_EVAL = (
    "id_alumno", "id_materia",
    "parcial_1", "parcial_2", "parcial_3",
    "total_clases", "asistencias",
    "total_participaciones", "participaciones",
    "total_tareas", "tareas", "recursa", "notas",
)
_COLS_EVAL_UPD = _COLS_EVAL[2:]  # sin las claves

class ErrorBase(Exception):
    """Error de la base que la página puede mostrar con un mensaje claro."""

    def __init__(self, mensaje, campo=None):
        super().__init__(mensaje)
        self.mensaje = mensaje
        self.campo = campo

def obtener_conexion():
    """Abre una conexión por petición y la guarda en g."""
    if "conexion" not in g:
        g.conexion = mysql.connector.connect(
            host=os.environ.get("MYSQL_HOST", HOST),
            port=int(os.environ.get("MYSQL_PORT", PUERTO)),
            user=os.environ.get("MYSQL_USER", USUARIO),
            password=os.environ.get("MYSQL_PASSWORD", CONTRASENA),
            database=os.environ.get("MYSQL_DATABASE", BASE),
            charset="utf8mb4",
            use_unicode=True,
        )
    return g.conexion

def cerrar_conexion(error=None):
    conexion = g.pop("conexion", None)
    if conexion is not None and conexion.is_connected():
        conexion.close()

def _cursor():
    return obtener_conexion().cursor(dictionary=True)

def _uno(sql, parametros=()):
    cur = _cursor()
    cur.execute(sql, parametros)
    fila = cur.fetchone()
    cur.close()
    return fila

def _todos(sql, parametros=()):
    cur = _cursor()
    cur.execute(sql, parametros)
    filas = cur.fetchall()
    cur.close()
    return filas

def _ejecutar(sql, parametros=()):
    conexion = obtener_conexion()
    cur = conexion.cursor()
    try:
        cur.execute(sql, parametros)
        conexion.commit()
        return cur.lastrowid
    except mysql.connector.Error as exc:
        conexion.rollback()
        raise _traducir_error(exc) from exc
    finally:
        cur.close()

def _traducir_error(exc):
    current_app.logger.exception("Error de la base de datos: %s", exc)
    codigo = exc.errno
    if codigo == 1062:
        return ErrorBase("duplicado", campo="duplicado")
    if codigo == 1452:
        return ErrorBase(
            "El alumno o la materia ya no existe. Vuelva a la lista e inténtelo de nuevo."
        )
    if codigo in (1264, 3819, 4025):
        return ErrorBase("Revise los valores: alguno está fuera del rango permitido.")
    return ErrorBase("No se pudo guardar. Inténtelo de nuevo.")

def _valores(columnas, datos):
    return tuple(datos[c] for c in columnas)

def _insertar(tabla, columnas, datos):
    campos = ", ".join(columnas)
    huecos = ", ".join(["%s"] * len(columnas))
    return _ejecutar(
        f"INSERT INTO {tabla} ({campos}) VALUES ({huecos})",
        _valores(columnas, datos),
    )

def _actualizar(tabla, columnas, datos, donde, params_donde):
    asignaciones = ", ".join(f"{c} = %s" for c in columnas)
    _ejecutar(
        f"UPDATE {tabla} SET {asignaciones} WHERE {donde}",
        _valores(columnas, datos) + params_donde,
    )

def recuento():
    return {
        "alumnos": _uno("SELECT COUNT(*) AS n FROM Alumnos")["n"],
        "materias": _uno("SELECT COUNT(*) AS n FROM Materias")["n"],
        "evaluaciones": _uno("SELECT COUNT(*) AS n FROM Alumnos_Materias")["n"],
    }

# ---------- Alumnos ----------

def listar_alumnos():
    return _todos(
        """
        SELECT id_alumno, boleta, nombre, carrera, trabaja, traslado,
               total_materias, cantidad_materias, porcentaje_materias
        FROM Alumnos
        ORDER BY boleta
        """
    )

def obtener_alumno(id_alumno):
    return _uno("SELECT * FROM Alumnos WHERE id_alumno = %s", (id_alumno,))

def existe_boleta(boleta, excepto_id=None):
    return _uno(
        "SELECT id_alumno FROM Alumnos WHERE boleta = %s AND id_alumno <> %s",
        (boleta, excepto_id or 0),
    ) is not None

def _guardar_alumno(valores, id_alumno=None):
    try:
        if id_alumno is None:
            return _insertar("Alumnos", _COLS_ALUMNO, valores)
        _actualizar("Alumnos", _COLS_ALUMNO, valores, "id_alumno = %s", (id_alumno,))
    except ErrorBase as exc:
        if exc.campo == "duplicado":
            raise ErrorBase(
                f"Ya existe un alumno con la boleta {valores['boleta']}.",
                campo="boleta",
            ) from exc
        raise

insertar_alumno = _guardar_alumno

def actualizar_alumno(id_alumno, valores):
    _guardar_alumno(valores, id_alumno)

def borrar_alumno(id_alumno):
    _ejecutar("DELETE FROM Alumnos WHERE id_alumno = %s", (id_alumno,))

# ---------- Materias ----------

def listar_materias():
    return _todos(
        """
        SELECT m.id_materia, m.nombre_materia, m.grupo,
               COUNT(am.id_alumno) AS num_evaluaciones
        FROM Materias AS m
        LEFT JOIN Alumnos_Materias AS am ON am.id_materia = m.id_materia
        GROUP BY m.id_materia, m.nombre_materia, m.grupo
        ORDER BY m.nombre_materia, m.grupo
        """
    )

def obtener_materia(id_materia):
    return _uno("SELECT * FROM Materias WHERE id_materia = %s", (id_materia,))

def existe_materia_par(nombre, grupo, excepto_id=None):
    return _uno(
        """
        SELECT id_materia FROM Materias
        WHERE nombre_materia = %s AND grupo = %s AND id_materia <> %s
        """,
        (nombre, grupo, excepto_id or 0),
    ) is not None

def insertar_materia(valores):
    return _insertar("Materias", _COLS_MATERIA, valores)

def actualizar_materia(id_materia, valores):
    _actualizar("Materias", _COLS_MATERIA, valores, "id_materia = %s", (id_materia,))

def borrar_materia(id_materia):
    _ejecutar("DELETE FROM Materias WHERE id_materia = %s", (id_materia,))

# ---------- Evaluaciones ----------

_SQL_EVAL = """
    SELECT am.*,
           a.boleta, a.nombre, a.total_materias, a.cantidad_materias,
           m.nombre_materia, m.grupo
    FROM Alumnos_Materias AS am
    JOIN Alumnos AS a ON a.id_alumno = am.id_alumno
    JOIN Materias AS m ON m.id_materia = am.id_materia
"""

def listar_evaluaciones():
    return _todos(_SQL_EVAL + " ORDER BY a.boleta, m.nombre_materia")

def evaluaciones_de_alumno(id_alumno):
    return _todos(
        _SQL_EVAL + " WHERE am.id_alumno = %s ORDER BY m.nombre_materia",
        (id_alumno,),
    )

def evaluaciones_de_materia(id_materia):
    return _todos(
        _SQL_EVAL + " WHERE am.id_materia = %s ORDER BY a.boleta",
        (id_materia,),
    )

def obtener_evaluacion(id_alumno, id_materia):
    return _uno(
        _SQL_EVAL + " WHERE am.id_alumno = %s AND am.id_materia = %s",
        (id_alumno, id_materia),
    )

def contar_evaluaciones(columna, id_valor):
    if columna not in ("id_alumno", "id_materia"):
        raise ValueError("columna no permitida")
    fila = _uno(
        f"SELECT COUNT(*) AS n FROM Alumnos_Materias WHERE {columna} = %s",
        (id_valor,),
    )
    return fila["n"] if fila else 0

def contar_evaluaciones_alumno(id_alumno):
    return contar_evaluaciones("id_alumno", id_alumno)

def contar_evaluaciones_materia(id_materia):
    return contar_evaluaciones("id_materia", id_materia)

def existe_evaluacion(id_alumno, id_materia):
    return obtener_evaluacion(id_alumno, id_materia) is not None

def insertar_evaluacion(valores):
    try:
        _insertar("Alumnos_Materias", _COLS_EVAL, valores)
    except ErrorBase as exc:
        if exc.campo == "duplicado":
            raise ErrorBase(
                "Este alumno ya tiene una evaluación en esa materia.",
                campo="id_materia",
            ) from exc
        raise

def actualizar_evaluacion(id_alumno, id_materia, valores):
    _actualizar(
        "Alumnos_Materias", _COLS_EVAL_UPD, valores,
        "id_alumno = %s AND id_materia = %s", (id_alumno, id_materia),
    )

def borrar_evaluacion(id_alumno, id_materia):
    _ejecutar(
        "DELETE FROM Alumnos_Materias WHERE id_alumno = %s AND id_materia = %s",
        (id_alumno, id_materia),
    )
