Parte de [[Modelo Computacional Imperativo]]

Los arreglos (arrays en inglés) son una estructura de datos fundamental en la informática que permiten almacenar una colección de elementos del mismo tipo de dato de forma contigua en la memoria.

## Caracteristicas
- **Se puede pensar como Funcion**: Dado un intervalo $[p,q) → Int$  tal que $p ≤ q$, donde el intervalo es indexador de valores que se almacenan en el array.
- **Tamaño fijo**: Una vez que se crea un arreglo, su tamaño o longitud se mantiene fijo durante la ejecución del programa.
- **Acceso aleatorio**: Se puede acceder a cualquier elemento del arreglo de forma directa utilizando su índice, lo que permite un acceso rápido a los datos.
- **Tipos de datos homogéneos**: Todos los elementos de un arreglo deben ser del mismo tipo de dato (enteros, flotantes, caracteres, etc.).

## Sintaxis
### Declaracion de un Array
$$ Var\ a: array\ [p,q)\ of\ A $$
### Acceder a valor del Array
$$a.i : A\ \text{si}\ p≤ i < q $$
#### Ejemplo:
 $Var\ arreglito : array\ [3,6)\ of\ Int$
$arreglito.3 = 200$
$arreglito.4 = 44$
$arreglito.5 = 22$

## A Tener en Cuenta
- $q - p$ nos da el tamaño del arreglo.
- Normalmente $p = 0$, o sea, la mayoria de arrays empiezan en $0$ y se indexan desde $0$.
- ­