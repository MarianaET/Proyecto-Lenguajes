------------------------------------------------INSTRUCCIONES-----------------------------------------------------

Para que el proyecto funcione correctamente, se deben hacer los siguientes cambios en el proyecto:

En la clase Analizador.java se debe cambiar la variable path por la dirección donde está mi archivo Lex.flex,
el cual está en mi carpeta de proyecto dentro del src/analizador.


Para el funcionamiento del proyecto se debe hacer lo siguiente:
1. Correr la clase Analizador.java
2. Correr la clase Interfaz.java

La clase Interfaz tiene un form, debe hacer click en el botón "Ingrese Archivo" para que este le permita 
ingresar el archivo de prueba. Solo acepta archivos .php

Al ingresar el archivo, se desplegará en el espacio derecho el archivo de prueba para que sea más fácil para
usted ir chequeando si este analiza bien y marca los errores o los Tokens bien.

Luego, al hacer click en el botón "Validar" se estará desplegando en el espacio izquierdo los Tokens y errores
identificados por el archivo .flex. Al mismo tiempo se generará el arachivo .out el cual lo encontrará en la misma 
carpeta que donde está el archivo de prueba que ingresó al programa.


-------------------------------------------------FUNCIONAMIENTO----------------------------------------------------

Mi programa no funciona completamente, tiene error en reconocer HTML ya que lo reconoce como si este fuese texto, 
al igual que poner un punto antes de estas declaraciones.


-------------------------------------------------MANEJO DE ERRORES--------------------------------------------------

Cuando hay un error en el archivo o código HTML, este algunas veces se queda enciclado y no reconoce lo que sigue 
hasta que encuentra un caracter reconocido