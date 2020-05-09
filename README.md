# delilahResto
Proyecto Módulo 3 - Curso Desarrollo Web Full Stack - Acámica

Api REST para manejar los pedidos realizados a un restaurant, creada con NODE JS y MYSQL.


> ##Configurar la base de datos
_Estas instrucciones te permitirán crear la base de datos correspondiente en la cual se realizarán las consultas._

###Requisitos previos:
_Se deben instalar los siguientes programas:_
* MySQL Workbench (con usuario y contraseña, en el puerto 3306)
* MySQL server

###Configuración:
_Se deben ejecutar las queries incluidas en el archivo `delilah.sql`, almacenado en la carpeta `doc` de este repositorio._
Las queries crean la base de datos llamada `delilah`, así como las tablas necesarias: la tabla de usuarios (`users`), la tabla de productos que ofrece el restaurant (`products`), la tabla de pedidos realizados por los usuarios (`orders`) y la tabla de detalle de cada pedido, en la que se guarda el dato del producto y cantidad correspondiente (`orderDetails`).
A continuación se ejecutan dos queries que cargan datos iniciales: una para guardar productos existentes en la base de datos, y la otra para agregar un nuevo usuario con rol de administrador.
_Los usuarios con rol de administrador sólo podrán darse de alta desde la base de datos._


> ##Iniciar el servidor
_Estas instrucciones te permitirán generar un servidor de manera local para poder testear el proyecto._

###Requisitos previos:
_Se deben instalar las dependencias incluidas en el package.json._
npm install node
npm install express
npm install jsonwebtoken
npm install body-parser
npm install sequelize 
npm install mysql2

###Configuración:
_Se debe configurar la conexión a la base de datos._
Se debe reemplazar el usuario, contraseña, url y puerto de Sequelize con los creados en el paso anterior, en el archivo `config.js`(server/config.js).

var sql = new Sequelize('mysql://USUARIO:CONTRASEÑA@localhost:3306/delilah');

###Inicio de servidor:
_levantar el servidor mediante una terminal._
node server.js


>##Probar los endpoints
_Estas instrucciones te permitirán testear la funcionalidad de la aplicación de pedidos._

###Requisitos previos:
_Se debe instalar el siguiente programa._
Postman

###Configuración:
_Se deben descargar los archivos `delilah resto.postman_collection.json` y `spec.yaml` incluidos en la carpeta `doc`._
El archivo POSTMAN se debe abrir en el mismo programa; contiene todos los endpoints referidos en la aplicación. Cada ruta posee (al apretar la solapa `edit`) la información necesaria para la comunicación con el server (los `headers` y el `body` de ser preciso).
El archivo YAML, en cambio, muestra la respuesta del servidor a cada endpoint configurado.

###Testeo de endpoints
_Instrucciones para el uso de las rutas._
Las rutas creadas permiten el alta de usuarios, la administración de productos y el manejo de los pedidos.
Las rutas `/register` y `/login` permiten crear un usuario e iniciar sesión correspondientemente: ambas devuelven un token de autentificación necesario para realizar el resto de los requests.
La base de datos ya tiene cargada un usuario con rol de administrador, el cual tiene permisos exclusivos que le dan acceso a los endpoints de crear producto, actualizar estado de pedido, entre otros.


---------
##Autor: Lucía Kondratavicius Fermo
##Proyecto: Delilah Resto - Acámica

<<<<<<< HEAD

=======
>>>>>>> 224bdb154cf355b0edca3420697e58a33479e5bb
