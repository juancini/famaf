Esta tecnica sirve para derivar por [[Induccion]] programas funcionales utilizando segmentos de listas en lugar de numeros naturales. Su metodo deriva de la [[Induccion]] Muy utiles para casos como el siguiente

$$ Q.xs.ys = ⟨ ∃ bs : : ys = xs ⧺ bs ⟩$$
La funcion Q tiene como especificacion "$xs$ es un segmento inicial de $ys$". Prestemos atencion que en nuestra definicion, $ys = xs ⧺ bs$ donde $xs$ es la parte de adelante de $ys$, seguido de un $bs$ que puede ser cualquier otro segmento.

Tambien podemos destacar que nuestra especificacion busca la existencia de un segmento final $bs$, y no los otros segmentos.

## Derivacion
Para resolver esta funcion puede estructurarse la derivacion inductiva de varias
maneras. La mas simple (aunque no necesariamente la mas corta) es considerar los
cuatro casos posibles (vacıa-vacıa, vacıa-no vacıa, no vacia- vacia, no vacia-no vacia). Dado que la lista vacıa es segmento de cualquier otra lista, analizaremos primero el caso en que xs sea vacıa
para cualquier valor posible de ys.

### Caso Base $1 (xs=[], ys)$

$Q.[ ].ys$
≡ { especificacion de Q }
$⟨∃ bs : : ys = [ ] ⧺ bs ⟩$
≡ { def. de ⧺ }
$⟨ ∃ bs : : ys = bs ⟩$
≡ { intercambio }
$⟨ ∃ bs : ys = bs : True ⟩$
≡ { rango unitario (o termino constante) }
$True$

### Caso Base $2, (xs, ys = [])$
$Q.xs.[ ]$
≡ { especificacion de Q }
$⟨ ∃ bs : : [ ] = xs ⧺ bs⟩$
≡ { igualdad de listas }
$⟨ ∃ bs : : [ ] = xs ∧ [ ] = bs ⟩$
≡ { intercambio }
$⟨ ∃ bs : [ ] = bs : [ ] = xs ⟩$
≡ { rango unitario (o termino constante) }
$[ ] = xs$ 

> Importante ver, que ambos casos bases deben ser iguales para el caso $xs=[], ys=[]$. Ya que si fueran distintos, el programa seria indefinido. Para el caso de ambas listas vacias, hay que chequear que ambos casos bases den lo mismo, en nuetrso caso, el caso base 1 devuelve $True$, y el caso base 2 devuelve $[] = xs => True$ ya que xs es vacio/

### Paso inductivo $(x ▹ xs, y ▹ ys)$
#### HI: $Q.xs.ys = ⟨ ∃ bs : : ys = xs ⧺ bs ⟩$
$Q.(x ▹ xs).(y ▹ ys)$
≡ { especificacion de Q }
$⟨∃ bs : : y ▹ ys = (x ▹ xs) ⧺ bs E⟩$
≡ { definicion de ++ }
$⟨∃ bs : : y ▹ ys = x ▹ (xs ⧺ bs)⟩$
≡ { igualdad de listas }
$⟨ ∃ bs : : y = x ∧ ys = xs ⧺ bs ⟩$
≡ { distributiva del $∧$ con el $∨$ }
$y = x ∧ ⟨ ∃ bs : : ys = xs ⧺ bs ⟩$
≡ { HI }
$y = x ∧ Q.xs.ys$

