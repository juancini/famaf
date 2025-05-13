> [!info] Ejercicio 2:
> Luego, dadas las siguientes sentencias en assembler LEGv8:
> 
> a) ADD X0, X1, X2
> b) ADDI X0, X0, #1
> ADD X0, X1, X2
> 
> 2.1) Escribir la secuencia mínima de código “C” asumiendo que los registros X0, X1 y X2
> contienen las variables f, g y h respectivamente.
> 
> 2.2) Dar el valor de cada variable en cada instrucción assembler si f, g y h se inicializan
> con valores de 1, 2, 3, en base 10, respectivamente.

### a.2.1)

```c
f = g + h;
```

#### a.2.2)
```arm-asm
ADD X0, X1, X2 //X0 = 5, X1 = 2, X2 = 3
```

#### b.2.1)
```c
f++;
f = g + h;
```

#### b.2.2)
```arm-asm
ADDI X0, X0, #1    //X0 = 2, X0 = 1, #1 = 1
ADD X0, X1, X2     //X0 = 5, X1 = 2, X2 = 3
```