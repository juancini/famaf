Esta nota sirve como practica para parcial y esta basado en el Parcial Tema 1 dado el 36/9/2022
1. Considera la expresion $⟨\sum i, j : (i < j < 2) ∧ (−3 < i < 2) : (2 + i) ∗ j ⟩$
	- Explica si se puede aplicar el axioma de Anidado. Si se puede, ademas expresa el resultado. Si no se puede en esa expresion, se puede despues de manipular el rango?
	- Expresa el conjunto de valores que satisfacen el rango de la expresion original.

[[solucion_parcial_ej_1]]

2. Considera la siguiente especificacion informal: La funcion f.xs debe devolver la cantidad de elementos impares en posiciones pares de la lista xs.
	- Indica el tipo de la funcion f .a.
	- Propone una especificacion formal para f .b.
	- Propone una lista xs de cuatro elementos tal que f.xs = 2.c.

[[f.xs debe devolver la cantidad de elementos impares en posiciones pares|Solucion Ej.2]]

3. Considera la siguiente especificacion formal: $g.xs.ys = ⟨ ∃ as, cs : : xs = as ++ ys ++ ys ++ cs ⟩$
	- Antes de derivar, indica la hipotesis inductiva si la derivacion se hace por induccion en xs.
	- Deriva el caso inductivo hasta llegar a la modularizacion. No derives el caso base. Tampoco es necesario que completes la derivacion.
	- Indica claramente la funcion modularizada dando su especificacion y su tipo.

[[dos segmentos iguales consecutivos]] 

4. Considera la siguiente especificacion formal: $h.xs = ⟨Max as, bs : xs = as + +bs ∧ pares.as : sum.as ⟩$ donde $pares.us = ⟨ ∀ i : 0 ⩽ i < \#us : par .(us!i) ⟩$ y pueden usar la propiedad $pares.(a ▷ as) ≡ par.a ∧ pares.as$
	- Deriva el caso inductivo indicando claramente la HI antes de comenzar la derivacion.
	- Indica cual es la funcion generalizada $(h\_gen)$ indicando su tipo y su especificacion.
	- Definı $h$ usando $h\_gen$.
	- Deriva el caso inductivo de la funcion generalizada.