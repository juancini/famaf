2. Considera la siguiente especificacion informal: La funcion f.xs debe devolver la cantidad de elementos impares en posiciones pares de la lista xs.
	- Indica el tipo de la funcion $f$
	- Propone una especificacion formal para $f$ 
	- Propone una lista xs de cuatro elementos tal que $f.xs = 2$

a. $f.xs :: [Nat] -> Nat$
b. $$f.xs = ⟨N\ i : 0 ≤ i < \#xs ∧ par.i : ¬par.(xs.i)⟩$$
c. $[1,1,1,3]$
