
# Creacion de Imagenes y animaciones

Este proyecto tiene como objetivo principal desarrollar programas en lenguaje ensamblador ARMv8 que interactúen con la interfaz visual de un microprocesador ARM mediante una estructura FrameBuffer en una Raspberry Pi 3 emulada. A través de la implementación de imágenes estáticas y animaciones, se busca comprender el funcionamiento del sistema de visualización gráfica, donde cada píxel de la pantalla está representado como una ubicación específica en la memoria RAM. El trabajo permite aplicar conocimientos de programación de bajo nivel para manipular directamente el hardware de video, creando representaciones visuales mediante la escritura de valores de color en direcciones de memoria determinadas.

> [!info] Objetivos
> ● Escribir programas en lenguaje ensamblador ARMv8.
> ● Comprender la interfaz de entrada/salida de un microprocesador ARM, utilizando una
> interfaz visual.
> ● Comprobar el principio de funcionamiento de una estructura FrameBuffer de video en
> una plataforma Raspberry Pi 3 emulada.
> ● Emular el comportamiento de los pines de entrada-salida de propósitos generales
> (GPIO) del microprocesador ARM usando el teclado de la computadora.

> [!important] Condiciones
> ● Realizar el trabajo en grupos de exactamente 4 personas (deben inscribirse en el
> siguiente link antes del viernes 23 de mayo).
> ● Tienen tiempo de entregar el laboratorio hasta las 23:59hs del viernes 06 de junio
> En la evaluación se va a considerar el último commit realizado antes de la fecha y
> hora de entrega. (No se considerarán nuevos trabajos pasado este límite de tiempo.
> Los trabajos entregados por cualquier otro medio al establecido se consideran
> desaprobados).
> ● La aprobación del ejercicio 1 de este trabajo es requisito obligatorio para obtener la
> REGULARIDAD de la materia. La aprobación de los ejercicios 1 y 2 es requisito
> obligatorio para obtener la PROMOCIÓN de la materia


# [[Crear una Imagen en Assembler|Ejercicio 1]]

 a) Escribir un programa en assembler ARMv8 sobre el código de ejemplo dado, que
genere una imagen diseñada por el grupo. Cada imagen debe ser estática 

 b) En caso de utilizar instrucciones de ARMv8 que no formen parte del subconjunto
LEGv8, indicar en el informe cuáles usaron y justificar brevemente por qué.

# [[Animacion en Assembler|Ejercicio 2]]

Ejercicio 2
a) Escribir un programa en assembler ARMv8 que genere una animación por pantalla,
siendo posible reutilizar el código del ejercicio 1 pero considerando que la secuencia
de movimiento debe tener una duración no menor a 10 segundos (pudiendo no
concluir jamás).
b) En caso de utilizar instrucciones de ARMv8 que no formen parte del subconjunto
LEGv8, indicar en el informe cuáles usaron y justificar brevemente por qué.
c) Generar un video donde se vea la animación corriendo y, al realizar la entrega del
laboratorio, subirlo al siguiente padlet, en la sección 2025, indicando el número de
grupo asignado por la cátedra.
