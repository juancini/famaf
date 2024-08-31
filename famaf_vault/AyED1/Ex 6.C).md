Derivar las funciones correspondientes.

d ) $busca.v.xs = ⟨Min i : 0 ≤ i < \#xs ∧ xs.i = v : i ⟩$

## Caso base $xs = []$
$busca.v.[]$
= {Especificacion de busca}
$⟨Min i : 0 ≤ i < \#[] ∧ [].i = v : i ⟩$
= { def de #}
$⟨Min i : \underline{0 ≤ i < 0} ∧ [].i = v : i ⟩$
= {lógica}
$⟨Min i : False : i ⟩$
= {Rango Vacio $Min$}
$- \infty$
## Caso Inductivo $x= (x \rhd xs)$
HI: $busca.v.xs = ⟨Min i : 0 ≤ i < \#xs ∧ xs.i = v : i ⟩$
$busca.v.(x \rhd xs)$
= { Especificacion de busca}
$⟨Min i : 0 ≤ i < \underline{\#(x \rhd xs)} ∧ (x \rhd xs).i = v : i ⟩$
= { def #}
$⟨Min i : \underline{0 ≤ i < \#xs + 1} ∧ (x \rhd xs).i = v : i ⟩$
= {Aritmetica}
$⟨Min i : (0 ≤ i < \#xs \lor i=1) ∧ (x \rhd xs).i = v : i ⟩$
= { Tengo que hacer analisis por casos }
### 1) $(x \rhd xs).i = v ∨ ¬(x \rhd xs).i = v$

Trivial por Tercer Excluido
### 2) $(x \rhd xs).i = v \equiv True$ 
$⟨Min i : (0 ≤ i < \#xs \lor i=1) ∧ \underline{(x \rhd xs).i = v} : i ⟩$
= { Caso true }
$⟨Min i : \underline{(0 ≤ i < \#xs \lor i=1) ∧ True} : i ⟩$
= { Elemento Neutro Conjuncion}
$⟨Min i : \underline{(0 ≤ i < \#xs \lor i=1)} : i ⟩$
= {separacion de un termino}
$\underline{⟨Min i : i=0 : i⟩} min ⟨Min i : 0 ≤ i < \#xs : i⟩$
= {rango unitario para Min}
$i min ⟨Min i : 0 ≤ i < \#xs : i⟩$
={??????? WHERE HIPOTESIS??}