#TP3 #Ex7 #Ex8 #Orga

>[!info] **Ejercicio 7:**
>Un *DECODIFICADOR* es un circuito combinacional que convierte información binaria de $N$
entradas codificadas ($A$), a $2^N$ salidas ==únicas== $(X$). Esto quiere decir que sólo una salida $X
Considere un decodificador activo por bajo (salida activa = $0$) con $N=2$ y $2^N=4$ (deco 2 x 4).
# Tablas de Verdad

> [!info] a) Expresar las tablas de verdad de las cuatro salidas $X0$, $X1$, $X2$ y $X3$.

| $A1$ | $A2$ | $X0$ | $X1$ | $X2$ | $X3$ |
| ---- | ---- | ---- | ---- | ---- | ---- |
| $0$  | $0$  | $1$  | $1$  | $1$  | $0$  |
| 0    | $1$  | $1$  | $1$  | $0$  | $1$  |
| $1$  | $0$  | $1$  | $0$  | $1$  | $1$  |
| $1$  | $1$  | $0$  | $1$  | $1$  | $1$  |


# Formas Canonicas

> [!info] b) Encontrar las expresiones de X0, X1, X2 y X3 como suma de minitérminos y como producto de maxitérminos

Como cada salida tiene su propia ecuación, las ecuaciones son las siguientes:

## miniterminos


$$X0 = (\overline{A1}*\overline{A2}) + (A1*\overline{A2}) + (\overline{A1}*A2)$$
$$X1 = (\overline{A1}*\overline{A2}) + (A1 * \overline{A2}) + (A1 *A2)$$
$$X2 = (\overline{A1} * \overline{A2}) + (A1*\overline{A2}) + (A1*A2)$$
$$X3 = (A1 * \overline{A2}) + (\overline{A1} * A2) + (A1 * A2)$$
## maxiterminos
$$X0 = A1+A2$$
$$X1 = A1+\overline{A2}$$
$$X2 = \overline{A1}+A2$$
$$X3 = \overline{A1}+\overline{A2}$$
# Expresiones Minimizadas

> [!info] c) Encontrar expresiones minimizadas de X0, X1, X2 y X3 utilizando el método de Karnaugh o un método algebraico.

[Mapa de Karnaugh](https://es.wikipedia.org/wiki/Mapa_de_Karnaugh) para $X0$. Hay que tener cuidado acá porque el karnaugh esta "invertido", ya que es salida por lo bajo.

| $A0$ \ $A1$ | $0$ | $1$ |
| ----------- | --- | --- |
| $0$         | 1   | 1   |
| $1$         | 1   | 0   |

Tambien demonos cuenta que los mapas de Karnaugh para $X1$, $X2$, y $X3$ son los mismos, pero con el cero rotando en que posicion está.

# Implementacion en compuertas lógicas

> [!info] d) Implementar las expresiones anteriores a través del uso de compuertas lógicas

Implementacion, captura tomada desde [Wikipedia](https://en.wikipedia.org/wiki/Binary_decoder#/media/File:Decoder_Example.svg)

![[Pasted image 20250402190031.png|500]]

> [!info] e) Repetir el punto (d) agregando una entrada de HABILITACIÓN (E) activa por bajo, de tal forma que cuando E=‘1’ ninguna señal de salida permanezca habilitada

Para agregarle una entrada por lo bajo, deberiamos hacer que cada salida deba tener un AND comparando con la negacion de $E$, para chequear que la entrada sea 0 y por lo tanto habilitada. La ecuaciones quedarian de forma:
$$ Xn = Xn * \overline{E}$$
Es una forma bruta, pero funciona. 

![[Pasted image 20250402190956.png]]