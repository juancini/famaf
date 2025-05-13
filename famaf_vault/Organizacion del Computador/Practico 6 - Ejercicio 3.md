> [!info] Ejercicio 3:
> Dadas las siguientes sentencias en “C”:
> 
> a) f = -g - f;
> b) f = g + (-f - 5);
> 
> 3.1) Escribir la secuencia mínima de código assembler LEGv8 asumiendo que f y g se
> asignan en los registros X0 y X1 respectivamente.
> 
> 3.2) Dar el valor de cada variable en cada instrucción assembler si f y g se inicializan con
> valores de 4 y 5, en base 10, respectivamente.

### a.3.1-2)
```arm-asm
ADD X0, X1, X0     // X0 =  9, X1  = 5, X0 = 4
SUB X0, XZR, X0    // X0 = -9, XZR = 0, X0 = 9
```

### b.3.1)

```arm-asm
ADDI X0, X0, #5    // X0 = 9 , X0 = 4, #5  
SUB X0, X1, X0     // X0 = -4, X1 = 5, X0 = 9 
```