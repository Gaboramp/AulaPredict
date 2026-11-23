# Validaciones de los formularios de captura de AulaPredict.
# Los mensajes de error se muestran junto al campo.

import re
from decimal import Decimal

# Valores exactos de original/datos.sql (no se alteran).
CARRERAS = [
    "Licenciatura en Física y Matemáticas",
    "Licenciatura en Ingeniería Matemática",
    "Licenciatura en Matemática Algorítmica",
]

_ENTERO = re.compile(r"-?\d+$")
_CALIFICACION = re.compile(r"\d+(\.\d{1,2})?$")
# Tope de un INT con signo en MySQL.
_INT_MAX = 2147483647

def _texto(valor):
    return (valor or "").strip()

def _texto_obligatorio(form, campo, maximo, msg_vacio, msg_largo, errores, valores):
    texto = _texto(form.get(campo))
    if not texto:
        errores[campo] = msg_vacio
    elif len(texto) > maximo:
        errores[campo] = msg_largo
    else:
        valores[campo] = texto

def _entero(valor, minimo=0):
    """Devuelve (numero, codigo). codigo: None, 'vacio', 'formato' o 'grande'."""
    texto = _texto(valor)
    if texto == "":
        return None, "vacio"
    if not _ENTERO.fullmatch(texto):
        return None, "formato"
    numero = int(texto)
    if numero < minimo or numero > _INT_MAX:
        # Fuera de rango o mayor que INT de MySQL.
        if numero > _INT_MAX:
            return None, "grande"
        return None, "formato"
    return numero, None

def _pedir_entero(form, campo, minimo, msg, etiqueta, errores, valores):
    numero, codigo = _entero(form.get(campo), minimo)
    if codigo == "grande":
        errores[campo] = f"{etiqueta} es demasiado grande."
        return None
    if numero is None:
        errores[campo] = msg
        return None
    valores[campo] = numero
    return numero

def _calificacion(valor):
    """Vacío → (None, None). Si hay texto, debe estar entre 0 y 10, con hasta dos decimales."""
    texto = _texto(valor)
    if texto == "":
        return None, None
    if not _CALIFICACION.fullmatch(texto):
        return None, "rango"
    numero = Decimal(texto)
    if numero < 0 or numero > 10:
        return None, "rango"
    return numero, None

def _booleanos(form, pares, errores, valores):
    for campo, mensaje in pares:
        texto = _texto(form.get(campo))
        if texto not in ("0", "1"):
            errores[campo] = mensaje
        else:
            valores[campo] = int(texto)

def validar_alumno(formulario):
    """Valida el alta o la edición de un alumno. Devuelve (errores, valores)."""
    errores, valores = {}, {}
    _texto_obligatorio(
        formulario, "boleta", 20,
        "Escriba la boleta.",
        "La boleta no puede tener más de 20 caracteres.",
        errores, valores,
    )
    _texto_obligatorio(
        formulario, "nombre", 100,
        "Escriba el nombre del alumno.",
        "El nombre no puede tener más de 100 caracteres.",
        errores, valores,
    )
    carrera = _texto(formulario.get("carrera"))
    if carrera not in CARRERAS:
        errores["carrera"] = "Seleccione la carrera."
    else:
        valores["carrera"] = carrera

    _booleanos(formulario, (
        ("trabaja", "Indique si el alumno trabaja (sí o no)."),
        ("traslado", "Indique si el traslado es un factor (sí o no)."),
    ), errores, valores)

    total = _pedir_entero(
        formulario, "total_materias", 1,
        "Indique el total de materias con un número entero mayor o igual que 1.",
        "El total de materias", errores, valores,
    )
    cantidad = _pedir_entero(
        formulario, "cantidad_materias", 0,
        "Indique la cantidad de materias con un número entero mayor o igual que 0.",
        "La cantidad de materias", errores, valores,
    )
    if cantidad is not None and total is not None and cantidad > total:
        errores["cantidad_materias"] = (
            "La cantidad de materias no puede ser mayor que el total de materias."
        )
        valores.pop("cantidad_materias", None)
    return errores, valores

def validar_materia(formulario):
    """Valida el alta o la edición de una materia. Devuelve (errores, valores)."""
    errores, valores = {}, {}
    _texto_obligatorio(
        formulario, "nombre_materia", 50,
        "Escriba el nombre de la materia.",
        "El nombre de la materia no puede tener más de 50 caracteres.",
        errores, valores,
    )
    _texto_obligatorio(
        formulario, "grupo", 50,
        "Escriba el grupo.",
        "El grupo no puede tener más de 50 caracteres.",
        errores, valores,
    )
    return errores, valores

def validar_evaluacion(formulario, incluir_claves=True):
    """
    Valida una evaluación.
    En edición, incluir_claves=False: el alumno y la materia no vienen del formulario.
    Devuelve (errores, valores).
    """
    errores, valores = {}, {}
    if incluir_claves:
        for campo, etiqueta, msg in (
            ("id_alumno", "El alumno", "Seleccione un alumno."),
            ("id_materia", "La materia", "Seleccione una materia."),
        ):
            if _pedir_entero(formulario, campo, 1, msg, etiqueta, errores, valores) is None:
                valores.pop(campo, None)

    for campo, etiqueta in (
        ("parcial_1", "parcial 1"),
        ("parcial_2", "parcial 2"),
        ("parcial_3", "parcial 3"),
    ):
        valor, err = _calificacion(formulario.get(campo))
        if err:
            errores[campo] = (
                f"La calificación del {etiqueta} debe estar entre 0 y 10, "
                "con dos decimales como máximo. También puede dejarla en blanco."
            )
        else:
            valores[campo] = valor

    pares = (
        ("total_clases", "asistencias",
         "Indique el total de clases con un número entero mayor o igual que 0.",
         "Indique las asistencias con un número entero mayor o igual que 0.",
         "Las asistencias no pueden ser mayores que el total de clases.",
         "El total de clases", "Las asistencias"),
        ("total_participaciones", "participaciones",
         "Indique el total de participaciones con un número entero mayor o igual que 0.",
         "Indique las participaciones con un número entero mayor o igual que 0.",
         "Las participaciones no pueden ser mayores que el total de participaciones.",
         "El total de participaciones", "Las participaciones"),
        ("total_tareas", "tareas",
         "Indique el total de tareas con un número entero mayor o igual que 0.",
         "Indique las tareas entregadas con un número entero mayor o igual que 0.",
         "Las tareas entregadas no pueden ser mayores que el total de tareas.",
         "El total de tareas", "Las tareas entregadas"),
    )
    for total_c, usado_c, msg_t, msg_u, msg_mayor, et_t, et_u in pares:
        total = _pedir_entero(formulario, total_c, 0, msg_t, et_t, errores, valores)
        usado = _pedir_entero(formulario, usado_c, 0, msg_u, et_u, errores, valores)
        if usado is not None and total is not None and usado > total:
            errores[usado_c] = msg_mayor
            valores.pop(usado_c, None)

    _booleanos(formulario, (
        ("recursa", "Indique si recursa esta materia (sí o no)."),
        ("notas", "Elija Sí o No en el campo Notas."),
    ), errores, valores)
    return errores, valores
