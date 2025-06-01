Un MULTIPLEXOR (MUX) es un circuito combinacional que que selecciona información
binaria de muchas entradas y la dirige a una única salida $Y$, conforme al estado de las
señales de selección. Si un MUX posee $2N$ entradas de información ($D$) requiere $N$
señales de selección $S$.
1. Expresar la tabla de verdad de un MUX de 2 entradas (y una salida) y su implementación mediante el uso de compuertas lógicas (AND, OR, NOT, NOR, NAND, etc.)
2. Mostrar cómo se puede usar un MUX para obtener una compuerta NOT.
3. ¿Cómo obtener un MUX de 4 entradas (y una salida) en base a multiplexores de 2 entradas?
4. ¿Cómo obtener un multiplexor de ‘N’ entradas con multiplexores de 2 entradas

## Tabla de Verdad e Implementacion

| $S$ | $A$ | $B$ | $Y$ |
| --- | --- | --- | --- |
| 0   | 0   | 0   | 0   |
| 0   | 0   | 1   | 0   |
| 0   | 1   | 0   | 1   |
| 0   | 1   | 1   | 1   |
| 1   | 0   | 0   | 0   |
| 1   | 0   | 1   | 1   |
| 1   | 1   | 0   | 0   |
| 1   | 1   | 1   | 1   |

![[Untitled Diagram.drawio 1.png]]