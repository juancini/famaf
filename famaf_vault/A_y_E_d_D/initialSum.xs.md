$initialSum.xs = ⟨Min\ bs, cs : xs = bs ⧺ cs : sum.bs ⟩$
## Caso base xs = []
initialsum.[]
= {Especif.}
$⟨Min\ bs, cs : \underline{[] = bs ⧺ cs} : sum.bs ⟩$
= {Igualdad de listas }
$⟨Min\ bs, cs : bs = [] ∧ cs = [] : sum.bs ⟩$
= {rango unitario}
$sum.[]$
= {def de $sum$}
$0$

## Caso base  cs = []
initialsum.xs.[]
= {Especif.}
$⟨Min\ bs, cs : \underline{[] = bs ⧺ cs} : sum.bs ⟩$
= {Igualdad de listas }
$⟨Min\ bs, cs : bs = [] ∧ cs = [] : sum.bs ⟩$
= {rango unitario}
$sum.[]$
= {def de $sum$}
$0$
## Caso Inductivo $xs = (x▹xs)$
### HI: $initialSum.xs = ⟨Min\ bs, cs : xs = bs ⧺ cs : sum.bs⟩$

$initialSum.(x▹xs)$
= { Especif.}
$⟨Min\ bs, cs : (x▹xs) = bs ⧺ cs : sum.bs⟩$
