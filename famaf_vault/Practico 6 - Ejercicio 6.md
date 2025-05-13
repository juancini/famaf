> [!info] Ejercicio 6:
> Dadas las siguientes sentencias en assembler LEGv8:

```arm-asm
LSL X2, X4, #1
ADD X0, X2, X4
ADD X0, X0, X4
```

```arm-asm
LSL X9, X3, #3
ADD X9, X6, X9
LSL X10, X4, #3
ADD X10, X7, X10
LDUR X12, [X9, #0]
ADDI X11, X9, #8
LDUR X9, [X11, #0]
ADD X9, X9, X12
STUR X9, [X10, #0]
```

> [!info] 
> 6.1) Escribir la secuencia mínima de código “C” asumiendo que los registros X0, X1, X2,
> X3 y X4 contienen las variables f, g, h, i y j respectivamente, y los registros X6, X7
> contienen las direcciones base de los arreglos A y B.
> 
> 6.2) Para las instrucciones LEGv8 anteriores, re-escriba el código para minimizar (de ser
> posible) la cantidad de instrucciones manteniendo la funcionalidad.


### a.6.1)
```c
f = j * 4;
```

### a.6.2)
```arm-asm
LSL X2, X4, #2
```