# API Rest Example

## ¿Cómo levanto el repositorio local?

- Para esto es necesario tener instalado el SDK y el CORE Runtime de .NET Core 3.1:
[LINK DE DESCARGA](https://dotnet.microsoft.com/download/dotnet-core/3.1)
- Descargar/clonar el [repositorio de GIT](https://github.com/ignacrescenzo/APIRestExample)
- Por consola de comandos, posicionado en ***\src\Supermarket.API***, corremos los siguientes comandos:

>     dotnet build
>     dotnet run

- Esto nos dirá el puerto por el que estará corriendo dentro del sistema y podremos acceder mediante por ejemplo el navegador a http://localhost:[PORT]/api/products para comenzar a interactuar con la API

## ¿Cómo levanto el proyecto mediante Docker?

-	Para esto es necesario tener instalado Docker en la PC que se quiere levantar el proyecto.
-	Una vez instalado y corriendo en la máquina host, tenemos que correr los siguientes comandos:

>     docker pull ignacrescenzo/api-rest-example
>     docker run --rm -it -p 8080:80 ignacrescenzo/api-rest-example

- Hecho esto podremos acceder mediante por ejemplo el navegador a http://localhost:8080/api/products para comenzar a interactuar con la API


## ¿Cómo desplegar el proyecto en Heroku?

-	Crear App en Heroku.
-	Ejecutamos en la raíz del proyecto `heroku git:remote -a {NOMBREAPP}`.
-	Seguir los pasos de: pestaña Deploy --> Deployment method --> opción Container Registry.
-	Esto nos desplegará una versión de Heroku de nuestra aplicación de Docker.
-	Para abrirla, corremos `heroku open` y se nos abrirá en el navegador para poder utilizar.
- Si hacemos cambios en el proyecto, al hacer `git push heroku master` desplegaremos una nueva versión.
