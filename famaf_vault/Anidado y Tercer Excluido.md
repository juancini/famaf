#Trucos

El truco de Anidado y Tercer Excluido funciona para [[Derivacion con segmentos|Derivaciones con segmentos]] cuando encontramos algo de la forma:
$$(x▹xs) = as ⧺ bs$$
Al encontrar este caso es dificil ver como proseguir, ya que pareceria que llegamos a un punto muerto. Pero todo depende de si $as$ es vacio o no. ya que si $as$ es vacio, podemos ver que nos daria $$(x▹xs) = bs$$
Pero tenemos que contemplar tambien el caso en que $as$ no es vacio, en cuyo caso lo podemos pensar $as$ como $$(x▹xs) = (a▹as) ⧺ bs$$
## Un Ejemplo Practico
 El siguiente ejercicio esta basado en un ejercicio del [[Parcial 2022]] de la materia, pero simplificado para esta explicacion. Me voy a saltar el caso base, y directamente vamos a ver el uso del tercer excluido.
 
1. HI: $g.xs.ys = ⟨ ∃ as,cs : : xs = as ⧺ ys ⧺ cs ⟩$ con induccion en $xs$
2. Caso Inductivo $xs=(x▹xs)$
$g.(x▹xs).ys$

= {Especif. g}
$⟨ ∃ \underline{as}, cs : : (x▹xs) = as ⧺ ys ⧺ cs⟩$

#### ={ [[A22. Anidado|Desanidado]] }
$⟨ ∃ as : \underline{True} : ⟨ ∃cs : : (x▹xs) = as ⧺ ys ⧺ cs ⟩⟩$

> Este paso consiste en sacar $as$ como otro cuantificador, dejando el resto dentro. Si tuvieras un caso que con mas listas, as,bs,cs, SOLO SACAS UNO Afuera, tal que  $⟨∃ as : True : \underline{⟨ ∃ bs,cs,.. ::..⟩}⟩$
#### = {Tercer Excluido $(as = [] ∨ as ≠ [] = True)$}
$⟨ ∃ as : \underline{as = [] ∨ as ≠ []} : ⟨ ∃cs : : (x▹xs) = as ⧺ ys ⧺ ys ⧺ cs ⟩⟩$

= { Particion de rango }
$⟨ ∃ as : \underline{as = []} : ⟨ ∃cs : : (x▹xs) = \underline{as} ⧺ ys ⧺ ys ⧺ cs ⟩\bigvee ⟨ ∃ as : \underline{as} ≠ [] : ⟨ ∃cs : : (x▹xs) = \underline{as} ⧺ ys ⧺ ys ⧺ cs ⟩$
> Aqui ya usamos nuestro truco, ahora podemos ver que del __lado izquierdo__ del $\bigvee$ nos dara un [[A17. Rango Unitario|rango unitario]] mucho mas facil de calcular, donde el $as$ va a desaparecer y del __lado derecho__ tenemos que seguir utilizando la siguiente parte de nuestro truco.

= {Rango Unitario para el lado izquierdo, [[Cambio de variable]] $a←(a▹as)$ permitido por $as ≠ []$ para el lado derecho}
$⟨ ∃cs : : (x▹xs) = ys ⧺ ys ⧺ cs ⟩\bigvee ⟨ ∃ a,as : (a▹as) ≠ [] : ⟨ ∃cs : : \underline{(x▹xs) = (a▹as) ⧺ ys ⧺ ys ⧺ cs} ⟩$
> Nota: en el lado izquierdo no deberia quedar ningun $as$, por el uso de rango unitario. 

Una vez llegados a este punto, podemos usar las definiciones de funciones, o particularmente, igualdad de listas o lo que se te ocurra para llegar a la hipotesis inductiva. [[dos segmentos iguales consecutivos| Aca podes ver el ejercicio completo para entenderlo mejor.]]


