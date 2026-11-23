# AulaPredict: página de captura

Esta página sirve para dar de alta, consultar, editar y borrar los datos de la base del proyecto: alumnos, materias y evaluaciones. Una evaluación reúne las calificaciones parciales, las asistencias, las participaciones y las tareas de un alumno en una materia. La página usa las tablas tal como están en el esquema original y no las modifica.

## Requisitos

- Python 3.
- MySQL. En Windows sirve el MySQL que ya tenga instalado o el de XAMPP.
- Los paquetes de Python del proyecto. En una terminal, dentro de la carpeta de la página, ejecute:

```
pip install -r requirements.txt
```

Eso instala Flask y el conector de MySQL. Si `pip` no funciona en Windows, pruebe con `py -m pip install -r requirements.txt`.

## 1. Crear la base de datos

La base se crea con los archivos originales del proyecto, `sql/esquema.sql` (las tablas) y `sql/datos.sql` (los datos de carga). Los comandos de esta sección se ejecutan desde la carpeta que contiene `sql/`.

`sql/esquema.sql` empieza con `USE Proyecto;`, así que la base tiene que existir antes. Entre a MySQL y créela:

```
mysql -u root -p
CREATE DATABASE Proyecto;
exit
```

Después cargue las tablas y luego los datos, en ese orden:

```
mysql -u root -p < sql/esquema.sql
mysql -u root -p < sql/datos.sql
```

Con XAMPP, el programa `mysql` está en `C:\xampp\mysql\bin`. También puede hacerlo desde phpMyAdmin: cree la base `Proyecto` y luego importe los dos archivos, primero el esquema y después los datos, con la opción Importar.

## 2. Poner el usuario y la contraseña de MySQL

La página se conecta con los valores que están al inicio de `db.py`:

```python
HOST = "localhost"
PUERTO = 3306
USUARIO = "root"
CONTRASENA = ""  # pon aquí tu contraseña de MySQL
BASE = "Proyecto"
```

Escriba su contraseña entre las comillas de `CONTRASENA`. En XAMPP el usuario `root` suele no tener contraseña, así que puede dejarla vacía.

Si prefiere no tocar el archivo, puede definir las variables de entorno `MYSQL_HOST`, `MYSQL_PORT`, `MYSQL_USER`, `MYSQL_PASSWORD` y `MYSQL_DATABASE`. Si existen, se usan en lugar de los valores de `db.py`.

## 3. Abrir la página

En la terminal, dentro de la carpeta de la página, ejecute:

```
python app.py
```

Abra en el navegador la dirección `http://127.0.0.1:5000`. Para detener la página, presione Ctrl+C en la terminal.

Opcional: si define la variable `FLASK_DEBUG=1` antes de arrancar, la página se abre en modo de depuración, que se recarga sola al cambiar el código.

## Qué revisa la página

### Lo que impide guardar

Si algo de esto no se cumple, no se guarda nada. El error aparece junto al campo y lo que ya escribió se conserva.

- Los campos obligatorios deben estar llenos, y los textos no pueden pasar de su largo máximo.
- La boleta no puede repetirse.
- El total de materias es un entero de 1 en adelante. La cantidad de materias no puede ser mayor que el total de materias.
- Una materia no puede repetirse con el mismo nombre y el mismo grupo.
- Un alumno solo puede tener una evaluación por materia.
- Los parciales pueden quedar en blanco. Si se escriben, van de 0 a 10, con dos decimales como máximo.
- Las asistencias no pueden pasar del total de clases. Tampoco las participaciones ni las tareas entregadas pueden pasar de su total.

### Lo que solo genera un aviso

Estos casos se pueden guardar, pero la página muestra un aviso para que revise la ficha del alumno:

- Con una evaluación nueva, el alumno llega a su total de materias o lo rebasa.
- La cantidad de materias del alumno no coincide con las evaluaciones que tiene registradas.

### Otros detalles

Los porcentajes los calcula la base. En la página solo se muestran, y si un total es 0 aparece «—». Antes de borrar un alumno o una materia, la página dice cuántas evaluaciones se borrarán con él.

## Errores comunes

Si la página no logra conectarse a MySQL, en el navegador aparece «Error interno» y el detalle se ve en la terminal donde ejecutó `python app.py`.

- **`Access denied for user 'root'@'localhost'` (error 1045):** el usuario o la contraseña de `db.py` no coinciden con los de su MySQL. Corrija `USUARIO` o `CONTRASENA`.
- **Error 1698, también `Access denied` para `root`:** pasa en Linux cuando `root` entra a MySQL con la cuenta del sistema y no con contraseña. Cree un usuario con contraseña y póngalo en `USUARIO` y `CONTRASENA` de `db.py`. Por ejemplo, con `sudo mysql`:

  ```
  CREATE USER 'aula'@'localhost' IDENTIFIED BY 'su_contraseña';
  GRANT ALL PRIVILEGES ON Proyecto.* TO 'aula'@'localhost';
  ```

- **`Unknown database 'Proyecto'` (error 1049):** falta crear la base. Vuelva al paso 1.
- **`Can't connect to MySQL server` (error 2003):** MySQL no está encendido. En XAMPP, inícielo con el botón Start de MySQL en el panel de control.
- **`ModuleNotFoundError: No module named 'flask'`** o **`No module named 'mysql'`:** faltan los paquetes. Ejecute `pip install -r requirements.txt` con el mismo Python con el que abre `app.py`.
- **`Table 'Alumnos' already exists`:** el esquema ya se había cargado. Si quiere empezar de cero, ejecute `DROP DATABASE Proyecto;` y repita el paso 1.
