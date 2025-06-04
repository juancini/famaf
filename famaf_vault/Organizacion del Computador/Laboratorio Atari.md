>[!info] Actividad
> El siguiente laboratorio **opcional** busca dar cuenta de como el hardware y el software se relacionan íntimamente.
>En la actualidad, la gran cantidad de capas de abstracción entre el software y el hardware vuelve muy difícil ver como se relacionan entre si, dado que en ultima instancia es todo hardware lo que ocurre en una computadora.
>En ese sentido hardware antiguo como los microprocesadores MOS 6507 (la versión barata del mos6502)  usados en las consolas ATARI 2600 (ATARI VSC) estaban tan limitados por sus características de hardware que muchas de las soluciones que implementaron para poder hacer videos juegos estaban íntegramente ligadas al hardware y solo podían ser programadas a nivel de código de maquina. 
> La siguiente actividad busca jugar con las posibilidades de manipular a nivel de hardware (RAM , registros, código maquina) los juegos de la ATARI 2600 para hackearlos y tener ventajas ... y aprender como se relacionan el código maquina con las posibildiades de un microprocesador de 8 bits como el de la ATARI.

# Objetivo

Deberán buscar y **modificar** algún juego de ATARI (en el recurso SCORM presentado hay urls para descargar varios miles de ROMS desde archive.org). Para ello usaran el emulador STELLA , desde donde buscaran 

1) una sección de RAM que represente alguna acción del juego (vidas, municiones, tiempo, level) y que modificandola nos de una ventaja (más vida, tiempo, municiones etc.)

2) Una sección de la ROM donde un banco de RAM sea accedido (cualquiera que hayan encontrado) y modificarlo para cambiar la naturaleza del juego 

3) modificar el sprite (mediante instrucciones binarios en la ROM) de algún personaje para que tenga un grafico diferente

Cada ítem completo representa 0.33 puntos de 1 (un) punto extra que se ganarán en el próximo parcial. Como máximo podrán tener 1 (un) punto extra en el próximo parcial (no aplicable a los recuperatorios ni finales)

## Secciones de RAM que representan acciones del juego

`- RAM_D4: Enemigos por matar
- RAM_85: Vidas
- RAM_80: Stage
- RAM_89: Ultimos dos digitos de Puntaje
- RAM_8a: Dos medios digitos de Puntaje
- RAM_8b: Primeros dos digitos de Puntaje`

## Modificar un sprite

El sprite del personaje principal se encuentra en el banco #0 de memoria. Lo converti en un trasero porque me parecia muy gracioso kssakjkajs

![[Pasted image 20250505220242.png]]

Para complementar cambie el sprite de disparo a un pedo, porque era mas gracioso asi. El mismo esta en `f961` jej.

