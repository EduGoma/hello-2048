# Hello 2048
Este repositorio contiene un clon del juego 2048 desarrollado en Python.
Con el docker-compose y con el Docker file se consigue contenerizar el juego para lanzar la imagen desde docker y poder jugar. 
## docker-compose
Es un archivo de configuración de Docker Compose que define la configuración de los contenedores Docker que se utilizarán para ejecutar la aplicación. Define las imágenes de Docker que se usarán para construir los contenedores, las variables de entorno que se establecerán, los puertos que se expondrán y cómo se vincularán los contenedores entre sí.
## Dockerfile
Es un archivo de texto que define cómo se construirá la imagen de Docker para la aplicación. Contiene una lista de instrucciones que Docker seguirá para construir la imagen de Docker, que se utilizará para crear el contenedor Docker que ejecuta la aplicación.

## .dockerignore
Es un archivo que especifica los archivos y directorios que deben excluirse durante la construcción de la imagen de Docker. Esto puede incluir archivos temporales, archivos de registro y otros archivos que no son necesarios para ejecutar la aplicación.

## Jenkinsfile
Es un archivo que define un conjunto de pasos que se ejecutarán cuando se construya la aplicación utilizando el servidor de automatización de CI/CD Jenkins. Estos pasos incluyen la construcción de la imagen de Docker, la ejecución de pruebas y la implementación de la aplicación en un entorno de producción.
