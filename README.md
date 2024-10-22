# CRUD Laravel + Vue + Inertia + ChartJS + DataTables  

## Doble CRUD con login en Laravel 10 y Vue3

Doble CRUD con relaciones entre tablas, usando el sistema de autenticación Laravel Breeze. Se utiliza <b>Laravel 10</b> y <b>Vue 3</b> con <b>Inertia.js</b>.

- Crud tradicional para <b>Tareas</b>

- Crud en una sola vista y con paginación para <b>Usuarios</b>

- Grafica de usuarios por tareas con <b>ChartJS</b>

- Reportes exportables de usuarios y de tareas con <b>DataTables</b>

- Se crea un componente para el select y otro para botón de editar.

- Se utiliza Factory para crear 6 registros de tareas y 25 de usuarios.


Instalación:

1) Crear una base de datos mysql con el nombre 'company3'

2) Acceder mediante terminal a la carpeta del proyecto

3) Ejecutar:  <b>Composer install</b>

4) Crear el archivo .env con los comandos: <b> cp .env.example .env</b>

5) Generar la API key ejecutando: <b> php artisan key:generate </b>

6) En el archivo .env colocar el nombre de la base de datos

7) Para ejecutar las migraciones: en este caso seria de tarea y usuario <b>php artisan migrate --seed</b>

8) Ejecutar <b>npm install</b> para las dependencias de node.js

9) Ejecutar <b>npm run build</b> y <b>php artisan serve</b> para visualizarlo en el navegador en este caso yo use xammp.

10) Para las pruebas y verificacion ocupe POSTMAN

## Tabla Tareas
- id 
- name


## Tabla Usuarios
- id
- name
- email
- phone
- tarea_id
