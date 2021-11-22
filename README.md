# TAREA N°3 - SISTEMAS OPERATIVOS
##  Descripción de solucion
> *Para la solucion de esta tarea, se utilizo como base el codigo de ejemplo adjuntado en el github, en donde se hizo uso de una funcion llamada **signal_handler** para manegar
las señales de interrupcion de procesos realizando la descriminacion de señales para que solo las señales **SIGUSR1** y **SIGUSR2** puedan terminar con el proceso padre o el hijo 
respectivamente.*

> *Con lo anteriore realizado, en la función **main** se hizo uso de un **fork** para la creacion de un subprocesos, esto para generar un proceso padre que muestre la secuencia de 
fibonacci y un proceso hijo que muestre la serie de números impares, los cuales iterarán 50 veces individualmente.*
##  Mode de uso de la solución
> *Para utilizar la solución implementada, se deben seguir los siguientes pasos en consola(se considera que se tiene el CLI de github en su dispositivo):*
1. Seleccionar o crear una carpeta para crear el repositorio, entrar a esta mediante consola y ejecutar el comando **git clone https://github.com/SAGITOR/SSOO-tarea03.git**.
2. Entrar a la carpeta que se obtendra de la clonacion del repositorio mediante el comando **cd SSOO-tarea03** en consola.
3. Ejecutar el comando **make** en consola, el cual creara un ejecutable llamado main.
4. Ejecutar el comando ./main (para linux) o main.exe (para windows).
##  Autor
> **Nombre:** *Marco Vivar De La Cruz*  
>**Correo:** *marco.vivar@alumnos.uv.cl*
