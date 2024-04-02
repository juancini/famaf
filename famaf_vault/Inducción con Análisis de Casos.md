Supongamos el siguiente ejercicio:
$$ sum\textunderscore par.n \equiv\langle\sum i : 0 \le i \le n \land par.i : i \rangle $$Su particularidad reside en que en el rango tenemos una conjunción. Para resolver esto debemos de usar una técnica de inducción particular
# Vamos a hacer inducción sobre _n_
## Caso Base _sum_par.0_
$$\underline{sum\textunderscore par.0}$$
$$\equiv \text{Especificacion de } sum \textunderscore par$$
$$\langle\sum i : \underline{0 \le i \le 0} \land par.i : i \rangle$$$$\equiv \text{Aritmetica, el rango es i = 0}$$$$\langle\sum i : \underline{i = 0 \land par.i} : i \rangle$$
$$\equiv\text{Leibinz 2}$$
$$\langle\sum i : \underline{i = 0 \land par.0 : i} \rangle$$
$$\equiv\text{definicion de par, artimetica, neutro conjuncion}$$
$$\underline{\langle\sum i : i = 0 : i \rangle}$$
$$ \equiv\text{Rango Unitario} $$
$$ 0 $$
## Caso Inductivo _sum_par.(n+1)_
### HI: $${\text sum \textunderscore par.n} \equiv \langle\sum i : 0 \le i \le n \land par.i : i \rangle $$
Luego vemos el caso para n+1
 $${\text sum \textunderscore par.(n+1)}$$
 $$ \equiv \text{Definicion de sum par } $$

$$\langle\sum i : \underline{0 \le i \le (n+1)} \land par.i : i \rangle$$
$$\equiv\text{Aritmetica}$$
$$\langle\sum i : \underline{(0 \le i \le n \lor i = (n+1)) \land par.i} : i \rangle$$
$$ \equiv \text{Distributividad de} \land \text{con } \lor $$ $$ \langle\sum i : \underline{(0 \le i \le n \land par.i) \lor (i=(n+1) \land par.i)} : i \rangle $$
$$ \equiv\text{Por Particion de Rango} $$
$$ \langle\sum i : i = (n+1) \land par.i : i \rangle + \underline{\langle\sum i : 0 \le i \le n \land par.i : i \rangle} $$
$$ \equiv\text{H.I.} $$
$$  \langle\sum i : \underline{i = (n+1) \land par.i} : i \rangle + {sum \textunderscore par.n} $$
$$ \equiv \text{Leibinz 2}$$
$$   \langle\sum i : \underline{i = (n+1) \land par.(n+1)} : i \rangle + {sum \textunderscore par.n} $$
Luego a partir de este punto tenemos dos caminos posibles, par.(n+1) es True, y donde par.(n+1) es False.

#### Caso par.(n+1) = True
$$ {sum \textunderscore par.n} + \langle\sum i : i = (n+1) \land \underline{par.(n+1)} : i \rangle $$
$$ \equiv Caso par.(n+1) = True; \text{neutro de } \land $$
$$ {sum \textunderscore par.n} + \underline{\langle\sum i : i = (n+1) : i} \rangle $$
$$ \equiv \text{Rango Unitario} $$
$$ {sum \textunderscore par.n} + (n+1) $$
#### Caso par.(n+1) = False
$$ {sum \textunderscore par.n} + \langle\sum i : i = (n+1) \land \underline{ par.(n+1)} : i \rangle $$
$$ \equiv \text{Doble negacion} $$
$$ {sum \textunderscore par.n} + \langle\sum i : i = (n+1) \land \underline{\lnot \lnot par.(n+1)} : i \rangle $$
$$ \equiv \text{Caso, negacion de True} $$
$$  {sum \textunderscore par.n} + \langle\sum i : \underline{ i = (n+1) \land False} : i \rangle $$
$$ \equiv \text{Absorbente } \land $$
$$ {sum \textunderscore par.n} + \langle\sum i : False: i \rangle $$
$$ \equiv \text{Rango Vacio} $$
$$ {sum \textunderscore par.n} + 0 $$


## Finalmente llegamos a
$$ sum \textunderscore par.0 \doteq 0$$
$$ sum \textunderscore par.(n+1) \doteq \begin{cases} {sum \textunderscore par.n} + (n+1) \text{ if } par.(n+1)  \\ {sum \textunderscore par.n} \text{ if } \lnot par.(n+1) \end{cases} $$
```haskell
par :: Int -> Bool
par n = (mod n 2) == 0

sumPar :: Int -> Int
sumPar 0 = 0
sumPar n | par n = n + sumPar (n-1)
		 | otherwise = sumPar (n-1)
```
