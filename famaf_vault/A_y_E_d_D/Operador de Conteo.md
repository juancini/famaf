# El cuantificador N
Cuenta la cantidad de elementos en el rango de especificacion que satisfacen el termino de la cuantificacion:
$$ \langle N i: R.i : T.i \rangle \doteq \langle \sum i: R.i \land T.i : 1 \rangle $$
Por ejemplo, $〈N x : x ∈ S : par.x 〉$ cuenta la cantidad de elementos pares que
hay en el conjunto S. Notese que $T$ es una funcion booleana.

## Digesto Y Teoremas Basicos
- AN1 (Definicion de conteo):
$〈N i : R.i : T.i 〉 = 〈∑ i : R.i ∧ T.i : 1 〉$
- TN1 (Rango vacıo):
$〈N i : F alse : T.i 〉 = 0$
- TN2 (Rango unitario):
$〈N i : i = C : T.i 〉= ( T.C → 1
 ¬ T.C → 0
)  $
- TN3 (Particion de rango):
$〈N i : R.i ∨ S.i : T.i 〉 = 〈N i : R.i : T.i 〉 + 〈N i : S.i : T.i 〉$
	 R y S son disjuntos.
- TN4 (Cambio de variable): Igual a Cambio de variable general.
$〈N i : R.i : T.i 〉 = 〈N j : R.(f.j) : T.(f.j) 〉$
– f tiene inversa en R.
– j no aparece en R y T .

Las siguientes reglas no valen o ni siquiera tienen sentido para el cuantificador N :
Regla del t´ermino
T´ermino constante
Distributividad
Anidado