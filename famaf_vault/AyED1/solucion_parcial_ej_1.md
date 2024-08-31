1. Considera la expresion $⟨\sum i, j : (i < j < 2) ∧ (−3 < i < 2) : (2 + i) ∗ j ⟩$
	- Explica si se puede aplicar el axioma de Anidado. Si se puede, ademas expresa el resultado. Si no se puede en esa expresion, se puede despues de manipular el rango?
	- Expresa el conjunto de valores que satisfacen el rango de la expresion original.

a. Si, podemos ya que el rango posee una conjuncion tal como pide el axioma [[A22. Anidado]]. Tambien podemos ver que se cumple $R.i ∧ S.i.j$ tal que $R.i = (-3<i<2)$
,S.i.j = (i<j<2), y $T.i.j = (2 + i) ∗ j$
El resultado seria de la forma
$⟨\sum i :(−3 < i < 2) :⟨\sum j: (i < j < 2) : (2 + i) ∗ j ⟩⟩$

b. $(−3 < i < 2) => i = \{-2,-1,0,1\}$ 
$(i < j < 2) => j = \{...,-2,-1,0,1\} ∧ i = \{...,-2,-1,0\}$
Luego de cruzar todos obtenemos $j = \{-1,0,1\} ∧ i = \{-2,-1,0\}$
