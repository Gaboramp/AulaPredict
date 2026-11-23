# Rutas de la página de captura de AulaPredict.

import os
import secrets
from decimal import Decimal

from flask import (
    Flask, abort, flash, redirect, render_template, request, session, url_for,
)

import db
import validaciones

app = Flask(__name__)
# Si no hay FLASK_SECRET_KEY, se genera una clave al arrancar (sirve para flash y CSRF).
app.secret_key = os.environ.get("FLASK_SECRET_KEY") or os.urandom(16)
app.teardown_appcontext(db.cerrar_conexion)

_BOOL = {"trabaja", "traslado", "recursa", "notas"}
_DECIMALES = {"parcial_1", "parcial_2", "parcial_3"}

@app.template_filter("porcentaje")
def filtro_porcentaje(valor):
    return "—" if valor is None else f"{float(valor):.2f} %"

@app.template_filter("parcial")
def filtro_parcial(valor):
    return "—" if valor is None or valor == "" else f"{float(valor):.2f}"

@app.template_filter("si_no")
def filtro_si_no(valor):
    return "Sí" if valor else "No"

@app.before_request
def _proteger_csrf():
    if "csrf_token" not in session:
        session["csrf_token"] = secrets.token_hex(16)
    if request.method == "POST":
        enviado = request.form.get("csrf_token", "")
        if not enviado or enviado != session.get("csrf_token"):
            abort(400)

@app.context_processor
def _csrf_plantilla():
    return {"csrf_token": session.get("csrf_token", "")}

@app.errorhandler(400)
def error_400(error):
    return render_template("error.html", titulo="Solicitud no válida",
        mensaje="La solicitud no es válida. Vuelva a abrir el formulario e inténtelo de nuevo."), 400

@app.errorhandler(404)
def error_404(error):
    mensaje = getattr(error, "description", "") or ""
    if not mensaje or mensaje.startswith("The requested URL"):
        mensaje = "No se encontró la página."
    return render_template("no_encontrado.html", mensaje=mensaje), 404

@app.errorhandler(500)
def error_500(error):
    app.logger.exception("Error interno")
    return render_template("error.html", titulo="Error interno",
        mensaje="No se pudo completar la operación. Inténtelo de nuevo."), 500

def _requerir(obtener, clave, mensaje):
    fila = obtener(clave) if not isinstance(clave, tuple) else obtener(*clave)
    if not fila:
        abort(404, mensaje)
    return fila

def _requerir_alumno(id_alumno):
    return _requerir(db.obtener_alumno, id_alumno, "No se encontró el alumno.")

def _requerir_materia(id_materia):
    return _requerir(db.obtener_materia, id_materia, "No se encontró la materia.")

def _requerir_evaluacion(id_alumno, id_materia):
    return _requerir(db.obtener_evaluacion, (id_alumno, id_materia),
                     "No se encontró la evaluación.")

def fila_a_form(fila, campos):
    """Pasa una fila de la base a valores de formulario (texto)."""
    datos = {}
    for campo in campos:
        valor = fila.get(campo)
        if valor is None:
            datos[campo] = ""
        elif campo in _BOOL:
            datos[campo] = "1" if valor else "0"
        elif campo in _DECIMALES or isinstance(valor, Decimal):
            datos[campo] = f"{float(valor):.2f}"
        else:
            datos[campo] = str(valor)
    return datos

def _avisos_alumno(id_alumno):
    """Avisos (no bloquean): tope de materias y desajuste de cantidad."""
    alumno = db.obtener_alumno(id_alumno)
    if not alumno:
        return []
    n = db.contar_evaluaciones_alumno(id_alumno)
    avisos = []
    if n > alumno["total_materias"]:
        avisos.append(
            f"El alumno tiene {n} evaluaciones, más que su total de materias "
            f"({alumno['total_materias']}). Revise su ficha."
        )
    elif n == alumno["total_materias"]:
        avisos.append(
            f"El alumno ya alcanzó su total de materias ({alumno['total_materias']})."
        )
    if n != alumno["cantidad_materias"]:
        avisos.append(
            f"La cantidad de materias del alumno ({alumno['cantidad_materias']}) "
            f"no coincide con las evaluaciones registradas ({n}). "
            "Ajuste la ficha del alumno si es necesario."
        )
    return avisos

def _texto_borrado(sujeto, n):
    det, art = ("Este alumno", "lo") if sujeto == "alumno" else ("Esta materia", "la")
    if n == 0:
        return (f"{det} no tiene evaluaciones. Solo se eliminará su ficha."
                if sujeto == "alumno"
                else f"{det} no tiene evaluaciones. Solo se eliminará la materia.")
    if n == 1:
        return (f"{det} tiene 1 evaluación. "
                f"Si {art} elimina, también se eliminará esa evaluación.")
    return (f"{det} tiene {n} evaluaciones. "
            f"Si {art} elimina, también se eliminarán esas evaluaciones.")

def _confirmar_borrado(titulo, nombre, detalle, url_cancelar, borrar, destino, exito):
    if request.method == "POST":
        borrar()
        flash(exito, "exito")
        return redirect(url_for(destino))
    return render_template(
        "confirmar_borrar.html",
        titulo=titulo, nombre=nombre, detalle=detalle, url_cancelar=url_cancelar,
    )

def _guardar(errores, accion, exito, destino, avisos=(), avisos_despues=None):
    """Ejecuta el alta/edición si no hay errores. Devuelve redirect o None."""
    if errores:
        return None
    try:
        accion()
    except db.ErrorBase as exc:
        errores[exc.campo or "_"] = exc.mensaje
        return None
    flash(exito, "exito")
    for aviso in (avisos_despues() if avisos_despues else avisos):
        flash(aviso, "aviso")
    return redirect(destino)

@app.route("/")
def inicio():
    return render_template("inicio.html", recuento=db.recuento())

@app.route("/alumnos")
def alumnos_lista():
    return render_template("alumnos_lista.html", alumnos=db.listar_alumnos())

def alumno_form(id_alumno=None):
    alumno = _requerir_alumno(id_alumno) if id_alumno else None
    n_eval = db.contar_evaluaciones_alumno(id_alumno) if id_alumno else 0
    errores, datos = {}, {"trabaja": "0", "traslado": "0"}
    if request.method == "POST":
        datos = request.form
        errores, valores = validaciones.validar_alumno(datos)
        if not errores and db.existe_boleta(valores["boleta"], excepto_id=id_alumno):
            errores["boleta"] = f"Ya existe un alumno con la boleta {valores['boleta']}."
        if id_alumno:
            destino = url_for("alumno_ver", id_alumno=id_alumno)
            resultado = _guardar(
                errores, lambda: db.actualizar_alumno(id_alumno, valores),
                "Se guardó el alumno.", destino,
            )
        else:
            nuevo = {"id": None}

            def _alta():
                nuevo["id"] = db.insertar_alumno(valores)

            resultado = _guardar(errores, _alta, "Se guardó el alumno.", "/")
            if resultado and nuevo["id"]:
                return redirect(url_for("alumno_ver", id_alumno=nuevo["id"]))
        if resultado:
            return resultado
    elif alumno:
        datos = fila_a_form(alumno, (
            "boleta", "nombre", "carrera", "trabaja", "traslado",
            "total_materias", "cantidad_materias",
        ))
    return render_template(
        "alumno_form.html",
        modo="editar" if alumno else "nuevo",
        datos=datos, errores=errores,
        carreras=validaciones.CARRERAS,
        evaluaciones=n_eval, alumno=alumno,
    )

@app.route("/alumnos/<int:id_alumno>")
def alumno_ver(id_alumno):
    alumno = _requerir_alumno(id_alumno)
    return render_template(
        "alumno_ver.html",
        alumno=alumno,
        evaluaciones=db.evaluaciones_de_alumno(id_alumno),
        avisos=_avisos_alumno(id_alumno),
    )

@app.route("/alumnos/<int:id_alumno>/borrar", methods=["GET", "POST"])
def alumno_borrar(id_alumno):
    alumno = _requerir_alumno(id_alumno)
    n = db.contar_evaluaciones_alumno(id_alumno)
    return _confirmar_borrado(
        "Eliminar alumno",
        f"{alumno['boleta']} — {alumno['nombre']}",
        _texto_borrado("alumno", n),
        url_for("alumno_ver", id_alumno=id_alumno),
        lambda: db.borrar_alumno(id_alumno),
        "alumnos_lista",
        "Se eliminó el alumno.",
    )

@app.route("/materias")
def materias_lista():
    return render_template("materias_lista.html", materias=db.listar_materias())

def materia_form(id_materia=None):
    materia = _requerir_materia(id_materia) if id_materia else None
    errores, datos = {}, {}
    if request.method == "POST":
        datos = request.form
        errores, valores = validaciones.validar_materia(datos)
        if not errores and db.existe_materia_par(
            valores["nombre_materia"], valores["grupo"], excepto_id=id_materia
        ):
            errores["nombre_materia"] = "Ya existe una materia con ese nombre y ese grupo."
        if id_materia:
            destino = url_for("materia_ver", id_materia=id_materia)
            resultado = _guardar(
                errores, lambda: db.actualizar_materia(id_materia, valores),
                "Se guardó la materia.", destino,
            )
        else:
            nuevo = {"id": None}

            def _alta():
                nuevo["id"] = db.insertar_materia(valores)

            resultado = _guardar(errores, _alta, "Se guardó la materia.", "/")
            if resultado and nuevo["id"]:
                return redirect(url_for("materia_ver", id_materia=nuevo["id"]))
        if resultado:
            return resultado
    elif materia:
        datos = fila_a_form(materia, ("nombre_materia", "grupo"))
    return render_template(
        "materia_form.html",
        modo="editar" if materia else "nuevo",
        datos=datos, errores=errores, materia=materia,
    )

@app.route("/materias/<int:id_materia>")
def materia_ver(id_materia):
    materia = _requerir_materia(id_materia)
    return render_template(
        "materia_ver.html",
        materia=materia,
        evaluaciones=db.evaluaciones_de_materia(id_materia),
    )

@app.route("/materias/<int:id_materia>/borrar", methods=["GET", "POST"])
def materia_borrar(id_materia):
    materia = _requerir_materia(id_materia)
    n = db.contar_evaluaciones_materia(id_materia)
    return _confirmar_borrado(
        "Eliminar materia",
        f"{materia['nombre_materia']} ({materia['grupo']})",
        _texto_borrado("materia", n),
        url_for("materia_ver", id_materia=id_materia),
        lambda: db.borrar_materia(id_materia),
        "materias_lista",
        "Se eliminó la materia.",
    )

@app.route("/evaluaciones")
def evaluaciones_lista():
    return render_template(
        "evaluaciones_lista.html", evaluaciones=db.listar_evaluaciones()
    )

@app.route("/evaluaciones/nueva", methods=["GET", "POST"])
def evaluacion_nueva():
    datos = {
        "id_alumno": request.args.get("id_alumno", ""),
        "id_materia": request.args.get("id_materia", ""),
        "recursa": "0", "notas": "0",
    }
    errores, avisos_form = {}, []
    if request.method == "POST":
        datos = request.form
        errores, valores = validaciones.validar_evaluacion(datos, incluir_claves=True)
        if not errores:
            if not db.obtener_alumno(valores["id_alumno"]):
                errores["id_alumno"] = "Seleccione un alumno."
            if not db.obtener_materia(valores["id_materia"]):
                errores["id_materia"] = "Seleccione una materia."
            if db.existe_evaluacion(valores["id_alumno"], valores["id_materia"]):
                errores["id_materia"] = "Este alumno ya tiene una evaluación en esa materia."
        destino = url_for(
            "evaluacion_ver",
            id_alumno=valores.get("id_alumno", 0),
            id_materia=valores.get("id_materia", 0),
        )
        def _avisos():
            return _avisos_alumno(valores["id_alumno"]) if "id_alumno" in valores else []

        resultado = _guardar(
            errores, lambda: db.insertar_evaluacion(valores),
            "Se guardó la evaluación.", destino, avisos_despues=_avisos,
        )
        if resultado:
            return resultado
    id_prev = datos.get("id_alumno")
    if id_prev and str(id_prev).isdigit():
        avisos_form = _avisos_alumno(int(id_prev))
    return render_template(
        "evaluacion_form.html", modo="nuevo", datos=datos, errores=errores,
        avisos=avisos_form, alumnos=db.listar_alumnos(), materias=db.listar_materias(),
    )

@app.route("/evaluaciones/<int:id_alumno>/<int:id_materia>")
def evaluacion_ver(id_alumno, id_materia):
    ev = _requerir_evaluacion(id_alumno, id_materia)
    return render_template("evaluacion_ver.html", ev=ev)

@app.route(
    "/evaluaciones/<int:id_alumno>/<int:id_materia>/editar",
    methods=["GET", "POST"],
)
def evaluacion_editar(id_alumno, id_materia):
    ev = _requerir_evaluacion(id_alumno, id_materia)
    errores, datos = {}, {}
    if request.method == "POST":
        datos = request.form
        errores, valores = validaciones.validar_evaluacion(datos, incluir_claves=False)
        destino = url_for("evaluacion_ver", id_alumno=id_alumno, id_materia=id_materia)
        resultado = _guardar(
            errores,
            lambda: db.actualizar_evaluacion(id_alumno, id_materia, valores),
            "Se guardó la evaluación.", destino,
        )
        if resultado:
            return resultado
    else:
        datos = fila_a_form(ev, (
            "id_alumno", "id_materia",
            "parcial_1", "parcial_2", "parcial_3",
            "total_clases", "asistencias",
            "total_participaciones", "participaciones",
            "total_tareas", "tareas", "recursa", "notas",
        ))
    return render_template(
        "evaluacion_form.html", modo="editar", datos=datos,
        errores=errores, avisos=[], ev=ev,
    )

@app.route(
    "/evaluaciones/<int:id_alumno>/<int:id_materia>/borrar",
    methods=["GET", "POST"],
)
def evaluacion_borrar(id_alumno, id_materia):
    ev = _requerir_evaluacion(id_alumno, id_materia)

    def _borrar():
        db.borrar_evaluacion(id_alumno, id_materia)
        for aviso in _avisos_alumno(id_alumno):
            flash(aviso, "aviso")

    return _confirmar_borrado(
        "Eliminar evaluación",
        f"{ev['boleta']} — {ev['nombre_materia']} ({ev['grupo']})",
        "Se eliminará solo esta evaluación. El alumno y la materia no se modifican.",
        url_for("evaluacion_ver", id_alumno=id_alumno, id_materia=id_materia),
        _borrar, "evaluaciones_lista", "Se eliminó la evaluación.",
    )


app.add_url_rule("/alumnos/nuevo", "alumno_nuevo", alumno_form, methods=["GET", "POST"])
app.add_url_rule(
    "/alumnos/<int:id_alumno>/editar", "alumno_editar", alumno_form,
    methods=["GET", "POST"],
)
app.add_url_rule("/materias/nueva", "materia_nueva", materia_form, methods=["GET", "POST"])
app.add_url_rule(
    "/materias/<int:id_materia>/editar", "materia_editar", materia_form,
    methods=["GET", "POST"],
)

if __name__ == "__main__":
    app.run(
        host="127.0.0.1",
        port=5000,
        debug=os.environ.get("FLASK_DEBUG") == "1",
    )
