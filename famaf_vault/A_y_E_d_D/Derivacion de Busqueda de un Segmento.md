# P.xs.ys = ⟨ ∃ as, bs : : ys = as ⧺ xs ⧺ bs ⟩
## La lista $xs$ es un segmento de la lista $ys$
Para resolver esto devemos hacer una [[Derivacion con segmentos]], en particular sobre la lista $ys$
$$P : [A] → [A] → Bool$$
$$P.xs.ys = ⟨ ∃ as, bs : : ys = as ⧺ xs ⧺ bs ⟩$$
## Caso base (ys = [ ])
$P.xs.[ ]$
≡ { especificacion de P }
$⟨∃ as, bs : : [ ] = as ⧺ xs ⧺ bs⟩$
≡ { igualdad de listas }
$⟨∃ as, bs : : [ ] = as ∧ [ ] = xs ∧ [ ] = bs ⟩$
≡ { [[A22. Anidado]] }
$⟨∃ as : : ⟨ ∃ bs : : [ ] = as ∧ [ ] = xs ∧ [ ] = bs ⟩$
≡ { intercambio }
$⟨∃ as : : ⟨ ∃ bs : [ ] = bs : [ ] = as ∧ [ ] = xs ⟩⟩$
≡ { rango unitario (o termino constante) }
$⟨∃ as : : [ ] = as ∧ [ ] = xs ⟩$
≡ { intercambio }
$⟨ ∃ as : [ ] = as : [ ] = xs ⟩$
≡ { rango unitario (o termino constante) }
$[ ] = xs$

## Paso inductivo (y ▷ ys)
### HI: P.xs.ys = ⟨ ∃ as, bs : : ys = as ⧺ xs ⧺ bs ⟩,
$\underline{P.xs.(y ▷ ys)}$

≡ { especificacion de P }
$\underline{⟨ ∃ as, bs : : y ▷ ys = \underline{as} ⧺ xs ⧺ bs ⟩}$

≡ { [[A22. Anidado]], tercero excluido ($as = [ ]$ o $as≠ [ ]$) }
$⟨ ∃ as : \underline{as = [ ] ∨ as≠ [ ]} : ⟨ ∃ bs : : y ▷ ys = as ⧺ xs ⧺ bs ⟩ ⟩$

≡ { [[A18. Particion de Rango]] }
$⟨ ∃ as : \underline{as = [ ]} : ⟨ ∃ bs : : y ▷ ys = \underline{as ⧺ xs ⧺ bs} ⟩ ⟩$
$∨\ ⟨ ∃ as : as≠ [ ] : ⟨ ∃ bs : : y ▷ ys = as ⧺ xs ⧺ bs ⟩ ⟩$

≡ { rango unitario, def. de ⧺ }
$\underline{⟨ ∃ bs : : y ▷ ys = xs ⧺ bs ⟩}$
$∨\ ⟨ ∃ as : as≠ [ ] : ⟨ ∃ bs : : y ▷ ys = as ⧺ xs ⧺ bs ⟩ ⟩$

≡ { modularizacion Q.xs.ys = ⟨ ∃ bs : : ys = xs ⧺ bs ⟩ }
$Q.xs.(y ▷ ys)$
$∨\ ⟨ ∃ as : \underline{as}≠ [ ] : ⟨ ∃ bs : : y ▷ ys = \underline{as} ⧺ xs ⧺ bs ⟩ ⟩$

≡ { cambio de variable $as ← a ▷ as$ (valido por as≠ [ ]) }
$Q.xs.(y ▷ ys)$
$∨\ ⟨∃ a, as : \underline{a ▷ as≠ [ ]} : ⟨ ∃ bs : : y ▷ ys = (a ▷ as) ⧺ xs ⧺ bs ⟩⟩$

≡ { igualdad de listas ($a ▷ as≠ [ ]$ ≡ True) }
$Q.xs.(y ▷ ys)$
$∨\ ⟨∃ a, as : : ⟨∃ bs : : \underline{y ▷ ys = \underline{(a ▷ as) ⧺ xs} ⧺ bs} ⟩⟩$

≡ { def. de ⧺ , igualdad de listas }
$Q.xs.(y ▷ ys)$
$∨\ ⟨∃ a, as : : ⟨ ∃ bs : : \underline{y = a ∧ ys = as ⧺ xs ⧺ bs} ⟩⟩$

≡ { intercambio }
$Q.xs.(y ▷ ys)$
$∨\ \underline{⟨ ∃ a, as : : ⟨ ∃ bs : y = a : ys = as ⧺ xs ⧺ bs ⟩ ⟩}$

≡ { [[A22. Anidado|(des)anidado]] }
$Q.xs.(y ▷ ys)$
$∨\ \underline{⟨ ∃ a, as, bs : y = a : ys = as ++ xs ++ bs ⟩}$

≡ { [[A22. Anidado]] }
$Q.xs.(y ▷ ys)$
$∨ ⟨ ∃ a :\underline{y = a} : ⟨ ∃ as, bs : : ys = as ++ xs ++ bs ⟩ ⟩$

≡ { rango unitario (o t ́ermino constante) }
$Q.xs.(y ▷ ys)$
$∨\ \underline{⟨ ∃ as, bs : : ys = as ++ xs ++ bs ⟩}$

≡ { HI }
$Q.xs.(y ▷ ys) ∨ P.xs.ys$