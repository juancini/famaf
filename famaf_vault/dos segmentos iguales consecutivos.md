3. Considera la siguiente especificacion formal: $g.xs.ys = ⟨ ∃ as, cs : : xs = as ⧺ ys ⧺ ys ⧺ cs ⟩$
	- Antes de derivar, indica la hipotesis inductiva si la derivacion se hace por induccion en xs.
	- Deriva el caso inductivo hasta llegar a la modularizacion. No derives el caso base. Tampoco es necesario que completes la derivacion.
	- Indica claramente la funcion modularizada dando su especificacion y su tipo.

1. HI: $g.xs.ys = ⟨ ∃ as, cs : : xs = as ⧺ ys ⧺ ys ⧺ cs ⟩$ con induccion en $xs$
2. Caso Inductivo $xs=(x▹xs)$
$g.(x▹xs).ys$

= {Especif. g}
$⟨ ∃ as, cs : : (x▹xs) = as ⧺ ys ⧺ ys ⧺ cs ⟩$

={ Desanidado }
$⟨ ∃ as : \underline{True} : ⟨ ∃cs : : (x▹xs) = as ⧺ ys ⧺ ys ⧺ cs ⟩⟩$

= {Tercer Excluido $(as = [] ∨ as ≠ [] = True)$}
$⟨ ∃ as : \underline{as = [] ∨ as ≠ []} : ⟨ ∃cs : : (x▹xs) = as ⧺ ys ⧺ ys ⧺ cs ⟩⟩$

= { Particion de rango }
$⟨ ∃ as : \underline{as = []} : ⟨ ∃cs : : (x▹xs) = as ⧺ ys ⧺ ys ⧺ cs ⟩\bigvee ⟨ ∃ as : as ≠ [] : ⟨ ∃cs : : (x▹xs) = as ⧺ ys ⧺ ys ⧺ cs ⟩$
= {Rango unitario}
$⟨ ∃cs : : (x▹xs) = \underline{[] ⧺ ys} ⧺ ys ⧺ cs ⟩\bigvee ⟨ ∃ as : as ≠ [] : ⟨ ∃cs : : (x▹xs) = as ⧺ ys ⧺ ys ⧺ cs ⟩$

= {def ⧺}
$⟨ ∃cs : : (x▹xs) = ys ⧺ ys ⧺ cs ⟩\bigvee ⟨ ∃ as : \underline{as} ≠ [] : ⟨ ∃cs : : (x▹xs) = \underline{as} ⧺ ys ⧺ ys ⧺ cs ⟩$

= {[[Cambio de variable]] $a←(a▹as)$ permitido por $as ≠ []$}
$⟨ ∃cs : : (x▹xs) = ys ⧺ ys ⧺ cs ⟩\bigvee ⟨ ∃ a,as : (a▹as) ≠ [] : ⟨ ∃cs : : \underline{(x▹xs) = (a▹as) ⧺ ys ⧺ ys ⧺ cs} ⟩$
={ Igualdad de Listas }
$⟨ ∃cs : : (x▹xs) = ys ⧺ ys ⧺ cs ⟩\bigvee \underline{⟨ ∃ a,as : \underline{(a▹as) ≠ []} : ⟨ ∃cs : : x = a ∧ xs = as ⧺ ys ⧺ ys ⧺ cs ⟩}$
= {Constructor de listas, Anidado}
$⟨ ∃cs : : (x▹xs) = ys ⧺ ys ⧺ cs ⟩\bigvee \underline{⟨∃ a,as,cs : : x = a ∧ xs = as ⧺ ys ⧺ ys ⧺ cs ⟩}$

= {desanidado}
$⟨ ∃cs : : (x▹xs) = ys ⧺ ys ⧺ cs ⟩\bigvee \underline{⟨∃ a : x = a :⟨∃as,cs : : x = a ∧ xs = as ⧺ ys ⧺ ys ⧺ cs ⟩}$

={ Rango Unitario }
$⟨ ∃cs : : (x▹xs) = ys ⧺ ys ⧺ cs ⟩ \bigvee \underline{⟨∃ as,cs : : x = a ∧ xs = as ⧺ ys ⧺ ys ⧺ cs ⟩}$

= {distributividad de ∧ con ∃}
$\underline{⟨∃cs : : (x▹xs) = ys ⧺ ys ⧺ cs ⟩} \bigvee x = a ∧ ⟨∃ as,cs : :  xs = as ⧺ ys ⧺ ys ⧺ cs ⟩$

= { Modularizacion $h.xs.ys = ⟨∃cs : : (x▹xs) = ys ⧺ ys ⧺ cs ⟩$}
$h.(x▹xs).ys \bigvee x = a ∧ ⟨∃ as,cs : :  xs = as ⧺ ys ⧺ ys ⧺ cs ⟩$

3. $$hs :: [a] → [a] → Bool$$$$h.xs.ys = ⟨∃cs : : (x▹xs) = ys ⧺ ys ⧺ cs ⟩$$
