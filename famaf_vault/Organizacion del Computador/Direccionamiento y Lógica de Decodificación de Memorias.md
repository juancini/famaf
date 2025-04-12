#TP4 #Orga #Ex1

>[!info] Ejercicio 1:
>Dados los siguientes bloques de memoria:

| 8Kbyte       | 16Knibble    |
| ------------ | ------------ |
| 256 x 16bits | 32Mbyte      |
| 2Kbits       | 16K x 32bits |
| 4K x 4bits   | 1024Kbyte    |

>[!info] Se pide:
>A. Ordenar los bloques de forma descendente según su capacidad total.
>B. Ordenar los bloques de forma ascendente según su cantidad de palabras

# Ordenar los bloques de forma descendente según su capacidad total

La capacidad total esta dada por la $2$ elevado a la cantidad de direcciones (address) $A$ multiplicado por los el largo en bits de una palabra $X$, tal que: 
	$$Capacidad = 2^a * X$$
lo que nos da la siguiente tabla, ordenada por capacidad

| nro | Bloque de Memoria | Capacidad Total (en Bytes) |
| --- | ----------------- | -------------------------- |
| 6   | 32Mbyte           | 268.435.456 Bytes          |
| 8   | 1024Kbyte         | 1048576 Bytes              |
| 1   | 8Kbyte            | 8192 Bytes                 |
| 7   | 16K x 32bits      | 4096 Bytes                 |
| 4   | 4K x 4bits        | 2000 Bytes                 |
| 2   | 256 x 16bits      | 512 Bytes                  |
| 3   | 2Kbits            | 250 Bytes                  |
| 5   | 16Knibble         | 8 Bytes                    |
Luego la siguiente tabla es cantidad de words. Si no nos especifican la cantidad de address, asumimos que el largo de la palabra es igual sufijo de la cantidad. Ex: $8Kbyte$ = $8Kw * Byte$

Luego tenemos:

| nro | Bloque de Memoria | Cantidad de Palabras |
| --- | ----------------- | -------------------- |
| 6   | 32Mbyte           | 33.554.432           |
| 8   | 1024Kbyte         | 1048576              |
| 7   | 16K x 32bits      | 16.384               |
| 5   | 16Knibble         | 16.384               |
| 1   | 8Kbyte            | 8192                 |
| 4   | 4K x 4bits        | 4.096                |
| 3   | 2Kbits            | 2048                 |
| 2   | 256 x 16bits      | 256                  |

>[!info] Ejercicio 2:
Cuantos “chip” de memoria RAM de 2K palabras x 8 bits se necesitan para implementar un banco de memoria de:
	A. 2K palabras de 16 bits?
	B. 4K palabras de 8 bits?
	C. 4K palabras de 16 bits?

A. Dos chips de 2K x 8 bits en _paralelo_, ya que buscamos expandir el ancho de palabra
B. Dos chips de 2K x 8 bits en _serie_, para aumentar la capacidad de direcciones
C. Cuatro chips de 2K x 8 bits, en _serie y paralelo_, ya que queremos aumentar las direcciones y el ancho de palabra

>[!info] Ejercicio 3:
Construir un sistema de memoria RAM de 4K palabras de 16 bits mediante la utilización de “chips” de memoria de:
	A. 1K palabras de 16 bits.
	B. 4K palabras de 8 bits.
	C. 2K palabras de 8 bits.

A)
![[Pasted image 20250408181016.png]]

B)
![[Pasted image 20250408181701.png]]

C)
![[Pasted image 20250408183441.png]]