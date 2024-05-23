Este es un caso particular para el [[Operador de Conteo]], como se ve en el Practico 1

$$〈N i : i=M : T.i 〉 = \begin{cases} T.C → 1 \\
 \square ¬ T.C → 0 \end{cases} $$
Todo esto es nuestra propiedad, que depende de una expresion cuantificada $P.E$, donde $E$ es nuestro analisis por caso. Luego debemos demostrar el teorema TN.2 del digesto.

$$E = \begin{cases} T.M → 1 \\
 \square ¬ T.M → 0 \end{cases} $$
 $P.E$  donde〈$N i : i=M : T.i$ 〉 =  E
### 1) $B_0 ∨ B_1 → M$
Esta demostracion es trivial, por tercer excluido $P ∨ ¬P$  Vale.
### 2)$B_0 → P.E_0$
Tenemos que demostrar que $T.M →〈N i : i=M : T.i 〉= 1$
Supongo que $T.M$, por lo tanto empezamos con $〈N i : i=M : T.i 〉$
y buscamos llegar a $1$ para que valga la demostracion.

$\underline{〈N i : i=M : T.i 〉}$
$=$ { definicion de $N$ }
$〈∑ i : \underline{i=M ∧ T.i} : 1 〉$
= { Leibniz $2$ }
$〈∑ i : i=M ∧ \underline{T.M} : 1 〉$
= { Suposicion $T.M$ }
$〈∑ i : \underline{i=M ∧ True} : 1 〉$
= {Elemento neutro $∧$}
$〈∑ i : i=M : 1 〉$
= { Rango Unitario $∑$ }
$1$

luego al obtener $1$ como resultado final, vale el caso $T.M$
### 2)$B_1 → P.E_1$
Tenemos que demostrar que $T.C →〈N i : i=m : T.C 〉= 0$
Supongo que $¬T.M$, por lo tanto empezamos con $〈N i : i=M : T.i 〉$
y buscamos llegar a $0$ para que valga la demostracion.

$\underline{〈N i : i=M : T.i 〉}$
$=$ { definicion de $N$ }
$〈∑ i : \underline{i=M ∧ T.i} : 1 〉$
= { Leibniz $2$ }
$〈∑ i : i=M ∧ \underline{T.M} : 1 〉$
= { Suposicion $T.M$ }
$〈∑ i : \underline{i=M ∧ False} : 1 〉$
= {Elemento absorbente $∧$}
$〈∑ i : False : 1 〉$
= { Rango Vacio $∑$ }
$0$
Luego al obtener $0$, vale el caso $¬T.M$

