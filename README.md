# Attiny-BadUsb-Rubber-Ducky
Proyecto Final SOII

### Creado por:
* Benjamin Hoyos Herrera
* Angel Yedid Nacif Mena
* Carlos Abraham Martines Zamora
* Genaro Gonzalez Lozada  
Proyecto Final SO II

## Alcance establecido:
* Activación: attiny al conectar.
* Lenguaje: interfaz Arduino con shell/bash.
* Alcance: carpeta documentos del home.
## Requisitos para hacerlo:

### Software:
1. Arduino IDE
2. Libreria Digispark
### Hardware:
1. Digispark Attiny85
2. Una extension de entrada USB para cuidar tu puerto
## Como configurar el Attiny85 USB:

* Para la configuracion de la libreria Digispark para Arduino necesitas seguir los pasos del tutorial de la wiki de Digispump:
    * https://digistump.com/wiki/digispark/tutorials/connecting 

* Nota importante: Como pueden ver en la documentacion hay algunos pasos extra que hay que añadir para que la libreria funcione correctamente en Ubuntu los cuales son:

    - 
    - libusb:
    - 




## Descripcion de los codigos:

### Codigo Bash:
* El codigo de bash funciona de la siguiente manera:  
 ![bash code](https://github.com/Benqui/Attiny-BadUsb-Rubber-Ducky/blob/main/media/bash_c.png) 
* Todo comienza con la funcion recursiva llamada ```buscar_y_robar``` la cual es una funcion recursiva que recorre todas las carpetas a partir de un path inicial, en este caso la carpeta ```Documents``` o ```Documentos```.  
Esta funcion recorre asi cada elemento de la carpeta dada en un ciclo ```for``` con una comprobacion para saber si el elemento que encontramos es una carpeta o un documento, si es una carpeta entra a seguir buscando llamandose asi misma (por eso es recursiva), si por el contrario es un documento usando un ```use-case``` podemos ver si es un pdf o un archivo de word si ese es el caso hace una copia de ese documento en una carpeta  
Sigue asi hasta que termine de revisar todos los ficheros de Documentos  

### Codigo arduino:  
* Para el codigo de arduino que usa el Attiny85 es el siguiente:  
 ![arduino code](https://github.com/Benqui/Attiny-BadUsb-Rubber-Ducky/blob/main/media/arduino_c.png) 

* Utilizamos la libreria ```DigiKeyboard.h``` con la que podemos ser capaces de hacer que el Attiny85 se registre como un teclado.  
Con la funcion ```DigiKeyboard.sendKeyStroke()``` Que nos permite registrar teclas especificas (en este caso atajos de teclado) para lo cual lo utilizamos para abrir una terminal.  
Mientras que la funcion ```DigiKeyboard.print()``` nos sirve para poder escribir como tal en la terminal para poder hacer la descarga y la ejecucion del codigo de bashs