> [!info] Ejercicio 1:
> Dadas las siguientes sentencias en “C”:
> a) `f = g + h + i + j;`
> b) `f = g + (h + 5)`;
> c) `f = (g + h) + (g + h)`;
> 1.1) Escribir la secuencia mínima de código assembler LEGv8 asumiendo que $f$, $g$, $h$, $i$ y
> $j$ se asignan en los registros $X0$, $X1$, $X2$, $X3$ y $X4$ respectivamente.
> 1.2) Dar el valor de cada variable en cada instrucción assembler si $f$, $g$, $h$, $i$ y $j$ se
> inicializan con valores de 1, 2, 3, 4, 5, en base 10, respectivamente.

### 1.1 a)
usando la instruccion ADD para sumar dos registros y guardarlos en un tercero
```
ADD X9, X3, X4
ADD X10, X9, X2
ADD X0, X10, X1
```
#### 1.1 b)
usando la instruccion ADDI que nos permite sumar un registro y un [[literal]]
```
ADDI X9, X2, #5 
ADD X0, X1, X9
```
### 1.1 C)
```
ADD X9, X1, X2
ADD X0, X9, X9
```
