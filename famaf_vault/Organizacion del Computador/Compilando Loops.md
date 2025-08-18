parte de [[assembler]]

$i$ in x22, k in x24, address of save in x25
```arm-asm
Loop:   LSL X10,X22,#3     // x10 = i x 2**3 = i8, x22 = i, 3
		ADD X10,X10,X25    // x10 = x10 + x25
		LDUR X9,[X10,#0]   // cargar x9 = save[i8 + x25]
		SUB X11,X9,X24     // x11 = x9 - k
		CBNZ X11,Exit      // x11 != 0, jmp Exit, no corre
		ADDI X22,X22,#1    // i = i + 1
		B Loop
Exit: …
```
