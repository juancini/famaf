{-# LANGUAGE NPlusKPatterns #-}

-- Juan Mancini
-- 2024

-- # Ejercicios
-- ## 1) programa las siguientes funciones
-- ### a) esCero :: Int -> Bool, que verifica si un entero es igual a 0.

esCero :: Int -> Bool
esCero x = x == 0

--              esCero 0 
--              True
--              esCero -5
--              False

-- ### b) esPositivo :: Int -> Bool, que verifica si un entero es estrictamente mayor a 0.
esPositivo :: Int -> Bool
esPositivo x = x > 0

--              esPositivo 10
--              True
--              esPositivo (-3)
--              False


-- ### c) esVocal :: Char -> Bool, que verifica si un caracter es una vocal en minúscula.
esVocal :: Char -> Bool
esVocal x = x `elem` ['a','e','i','o','u']

--              esVocal 'a'
--              True
--              esVocal 'z'
--              False



-- ### d) valorAbsoluto :: Int -> Int, que devuelve el valor absoluto de un entero ingresado.
valorAbsoluto :: Int -> Int
valorAbsoluto x = abs x

--              valorAbsoluto (-15)
--              15
--              valorAbsoluto 15
--              15

-- ## 2. Programá las siguientes funciones usando recursión o composición:

-- ### a) todos.xs = h ∀ i : 0 ≤ i < #xs : xs.i i (derivar en el teórico primero)
--        paratodo :: [Bool] -> Bool, que verifica que todos los elementos de una lista
--        sean True.
paraTodo :: [Bool] -> Bool
paraTodo [] = True
paraTodo (x:xs) = x && paraTodo xs

--              paraTodo [True, True, True]
--              True
--              paraTodo [(15<0), (10>0)]
--              False

-- ### b) sumatoria :: [Int] -> Int, que calcula la suma de todos los elementos de una
--        lista de enteros.
sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

--              sumatoria [1, 2, 3, 4]
--              10
--              sumatoria [(-1), (-2), (-3)]
--              -6


-- ### c) productoria :: [Int] -> Int, que calcula el producto de todos los elementos de
--        la lista de enteros.

productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * productoria xs

--              productoria [1, 2, 3, 4]
--              24
--              productoria [(-1), (-2), (-4)]
--              -8

-- ### d) factorial :: Int -> Int, que toma un número n y calcula n!.

factorial :: Int -> Int
factorial 1 = 1
factorial x = x * factorial (x-1)

--              factorial 2
--              2
--              factorial 11
--              39916800


-- ### e) Utilizá la función sumatoria para definir, promedio :: [Int] -> Int, que toma
--        una lista de números no vacı́a y calcula el valor promedio (truncado, usando división
--        entera).

promedio :: [Int] -> Int
promedio xs = div (sumatoria xs) (length xs)

--              promedio [1, 2, 3, 4]
--              2
--              promedio [(-1), (-2), (-4)]
--              -3

-- ## 3. Programá la función pertenece :: Int -> [Int] -> Bool, que verifica si un número se
--       encuentra en una lista.

pertenece :: Int -> [Int] -> Bool
pertenece _ [] = False
pertenece n (x:xs) = n == x || pertenece n xs

--              pertenece 4 [1, 2, 3, 4]
--              True
--              pertenece 4 [(-1), (-2), (-4)]
--              False

-- ## 4. Programá las siguientes funciones que implementan los cuantificadores generales. Notá que
--       el segundo parámetro de cada función, es otra función!.

-- ### 4.a) paratodo.xs.T = ∀ i : 0 ≤ i < #xs : T.(xs.i) (derivar en el teórico primero)
--          paratodo’ :: [a] -> (a -> Bool) -> Bool, dada una lista xs de tipo [a] y un
--          predicado T :: a -> Bool, determina si todos los elementos de xs satisfacen el
--          predicado T.

paratodo' :: [a] -> (a -> Bool) -> Bool
paratodo' [] t = True
paratodo' (x:xs) t = t x && paratodo' xs t

--              paratodo' [10, 11, 12] (>0)
--              True
--              paratodo' [10, 11, 12] (<0)
--              True

-- ### 4.b) existe.xs.T = ∃ i : 0 ≤ i < #xs : T.(xs.i) (derivar en el teórico primero)
--          existe’ :: [a] -> (a -> Bool) -> Bool, dada una lista xs de tipo [a] y un
--          predicado T :: a -> Bool, determina si algún elemento de xs satisface el predicado
--          T.

existe' :: [a] -> (a -> Bool) -> Bool
existe' [] _ = False
existe' (x:xs) t = t x || existe' xs t

--              existe' [] (>0)
--              False
--              existe' [(-10), 11, (-12)] (>0)
--              True
--              existe' [10, 11, 12] (<0)
--              True

-- ### 4.c) sumatoria.xs.T = h i : 0 ≤ i < #xs : T.(xs.i) (derivar en el teórico primero)
--          sumatoria’ :: [a] -> (a -> Int) -> Int, dada una lista xs de tipo [a] y una
--          función T :: a -> Int (toma elementos de tipo a y devuelve enteros), calcula la
--          suma de los valores que resultan de la aplicación de T a los elementos de xs.

sumatoria' :: [a] -> (a -> Int) -> Int
sumatoria' [] _ = 0
sumatoria' (x:xs) t = t x + sumatoria' xs t

--              sumatoria' [] (2 -)
--              0
--              sumatoria' [(-10), 11, (-12)] (*2)
--              -22
--              sumatoria' [10, 11, 12] (*3)
--              99

-- ### 4.d) productoria.xs.T = h i : 0 ≤ i < #xs : T.(xs.i) i (derivar en el teórico primero)
--          productoria’ :: [a] -> (a -> Int) -> Int, dada una lista de xs de tipo [a]
--          y una función T :: a -> Int, calcula el producto de los valores que resultan de la
--          aplicación de T a los elementos de xs.

productoria' :: [a] -> (a -> Int) -> Int
productoria' [] _ = 1
productoria' (x:xs) t = (t x) * (productoria' xs t)

--              productoria' [] (10 -)
--              1
--              productoria' [(-10), 11, (-12)] (*2)
--              10560
--              productoria' [10, 11, 12] (*3)
--              35640

-- ## 5) Definı́ nuevamente la función paratodo, pero esta vez usando la función paratodo’ (sin
--       recursión ni análisis por casos!).
paratodo'' xs = paratodo' xs (True ==)

--              paratodo'' [(5>4), (10>0)]
--              True
--              paratodo'' [(5>10)]
--              False

-- ## 6. Utilizando las funciones del ejercicio 4, programá las siguientes funciones por composición,
--       sin usar recursión ni análisis por casos.
-- ### 6.a) todosPares :: [Int] -> Bool verifica que todos los números de una lista sean pares.

esPar :: Int -> Bool
esPar x = x `mod` 2 == 0

todosPares :: [Int] -> Bool
todosPares xs = paratodo' xs (esPar)

--              *Main> todosPares [2,3,4]
--              False
--              *Main> todosPares [2,4,6]
--              True

-- ### 6.b) hayMultiplo :: Int -> [Int] -> Bool verifica si existe algún número dentro del
--          segundo parámetro que sea múltiplo del primer parámetro.

esMultiplo:: Int -> Int -> Bool
esMultiplo n m = m `mod` n == 0

hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo n xs = (existe' xs (esMultiplo n))

--              *Main> hayMultiplo 5 [10]
--              True
--              *Main> hayMultiplo 10 [5]
--              False
--              *Main> hayMultiplo 12 [7,3]
--              False

--- ### 6.c) sumaCuadrados :: Int -> Int dado un número no negativo n, calcula la suma de los primeros n cuadrados
--          Ayuda: En Haskell se puede escribir la lista que contiene el rango de números entre n y m como [n..m].

sumaCuadrados :: Int -> Int
sumaCuadrados n = sumatoria' [1..n] (^2)

--              *Main> sumaCuadrados 2
--              5
--              *Main> sumaCuadrados 3
--              14

-- ### 6.d) Programar la función existeDivisor::Int-> [Int] -> Bool, que dado en entero n
--          y una lista ls , devuelve True si y solo si, existe algún elemento en ls que divida a n.
esDivisor :: Int -> Int -> Bool
esDivisor n m = n `mod` m == 0

existeDivisor::Int-> [Int] -> Bool
existeDivisor n xs = existe' xs (esDivisor n)

--              *Main> existeDivisor 12 [5,7,3]
--              True
--              *Main> existeDivisor 12 [5,7]
--              False

-- ### 6.e) Utilizando la función del apartado anterior, definı́ la función esPrimo:: Int -> Bool,
--          que dado un entero n, devuelve True si y solo si n es primo.

esPrimo :: Int -> Bool
esPrimo n = not (existeDivisor n [2..(div n 2)])

--              *Main> esPrimo 7
--              True
--              *Main> esPrimo 8
--              False

-- ## 6.f) ¿Se te ocurre como redefinir factorial (ej. 2d) para evitar usar recursión?

factorial' :: Int -> Int
factorial' n = productoria' [1..n] id

--              *Main> factorial' 3
--              6
--              *Main> factorial' 4
--              24
--              *Main> factorial' 11
--              39916800

-- ### 6.g) Programar la función multiplicaPrimos :: [Int] -> Int que calcula el producto 
--          de todos los números primos de una lista

esPrimoValor :: Int -> Int
esPrimoValor n | esPrimo n == True = n
               | esPrimo n == False = 1

multiplicaPrimos :: [Int] -> Int
multiplicaPrimos xs = productoria' xs esPrimoValor

--              *Main> multiplicaPrimos [3,4,6,8,5]
--              15
--              *Main> multiplicaPrimos [2,4,6,8]
--              2
--              *Main> multiplicaPrimos [4,6,8]
--              1

-- ### 6.h) Programar la función esFib :: Int -> Bool, que dado un entero n, devuelve True
--          si y sólo si n está en la sucesión de Fibonacci.

--          Ayuda: Realizar una función auxiliar fib :: Int -> Int que dado un n devuelva el
--          n-ésimo elemento de la sucesión.

fib :: Int -> Int
fib n
  | n < 0 = error "El índice debe ser no negativo"
  | n == 0 = 0
  | n == 1 = 1
  | otherwise = fib (n - 1) + fib (n - 2)

-- esto existe porque no me esFib no me dejaba pasar n == fib
aux :: Int -> Int -> Bool
aux n m = n == fib m 

esFib :: Int -> Bool
esFib n = existe' [1..n+1] (aux n)

--       *Main> esFib 3
--       True
--       *Main> esFib 2
--       True
--       *Main> esFib 1
--       True
--       *Main> esFib 13
--       True
--       *Main> esFib 12
--       False

-- ### 6.i) Utilizando la función del apartado anterior, definı́ la función todosFib :: [Int] -> Bool
--          que dada una lista xs de enteros, devuelva si todos los elementos de la lista pertenecen
--          (o no) a la sucesión de Fibonacci.

todosFib :: [Int] -> Bool
todosFib xs = paratodo' xs esFib 

--          *Main> todosFib [1,2,3]
--          True
--          *Main> todosFib [1,2,3,4]
--          False
--          *Main> todosFib [1,2,3,5]
--          True

-- ## 7
-- map: toma una funcion a -> a y una lista [a], y le aplica la funcion a la lista
-- filter: toma una predicado a -> Bool y una lista[a], retorna aquellas que cumplen el predicado

-- succ n = n+1
-- map succ [1, -4, 6, 2, -8] -> Nos devulve la lista, pero con los sucesores tq [2, -3, 7, 3, -7]

-- filter esPositivo [1, -4, 6, 2, -8] -> nos devolvera los positivos tq [1, 6, 2]

-- ## 8 Programá una función que dada una lista de números xs, devuelve la lista que resulta de
--      duplicar cada valor de xs.

--      a) Definila usando recursión.
duplicaValor :: [Int] -> [Int]
duplicaValor [] = []
duplicaValor (x:xs) = (x * 2) : duplicaValor xs 

--          *Main> duplicaValor [2, 3]
--          [4,6]
--          *Main> duplicaValor [2, 3, -5]
--          [4,6,-10]

--      b) Definila utilizando la función map.
duplicaValor' xs = map (* 2) xs

--          *Main> duplicaValor' [2, 3]
--          [4,6]
--          *Main> duplicaValor' [2, 3, -10]
--          [4,6,-20]

-- ## 9) Programá una función que dada una lista de números xs, calcula una lista que tiene como
--      elementos aquellos números de xs que son primos.

--      a) Definila usando recursión.
sonPrimos :: [Int] -> [Int]
sonPrimos [] = []
sonPrimos (x:xs) | esPrimo x = x : sonPrimos xs
                 | not (esPrimo x) = sonPrimos xs

--              *Main> sonPrimos []
--              []
--              *Main> sonPrimos [5,6,7]
--              [5,7]

--      b) Definila utilizando la función filter.
sonPrimos' :: [Int] -> [Int]
sonPrimos' xs = filter esPrimo xs

--              *Main> sonPrimos' []
--              []
--              *Main> sonPrimos' [5,6,7]
--              [5,7]

--      c) Revisá tu definición del ejercicio 6g . ¿Se puede mejorar?

multiplicaPrimos' :: [Int] -> Int
multiplicaPrimos' xs = productoria (filter esPrimo xs) 

--              *Main> multiplicaPrimos' [5,6,7]
--              35
--              *Main> multiplicaPrimos' [6,7,8]
--              7

-- ## 10 a) La función primIgualesA toma un valor y una lista, y calcula el tramo inicial más largo de
--      la lista cuyos elementos son iguales a ese valor.

primIgualesA :: (Eq a) => a -> [a] -> [a]
primIgualesA _ [] = []
primIgualesA n (x:xs) | x == n = x : primIgualesA n xs
                      | x /= n = []

--              *Main> primIgualesA 3 [3,3,4,1]
--              [3,3]
--              *Main> primIgualesA 3 [4,3,3,4,1]
--              []
--              *Main> primIgualesA 3 []
--              []
--              *Main> primIgualesA 'a' "aaadaa"
--              "aaa"

--    b)  Programá nuevamente la función utilizando takeWhile.
primIgualesA' :: (Eq a) => a -> [a] -> [a]
primIgualesA' n xs = takeWhile (== n) xs
--              *Main> primIgualesA' 3 [3,3,3,5]
--              [3,3,3]
--              *Main> primIgualesA' 3 [4,3,3,4,1]
--              []
--              *Main> primIgualesA' 3 []
--              []
-- no se porque ahora no anda con char si es la misma especificion que antes

-- ## 11. La función primIguales toma una lista y devuelve el mayor tramo inicial de la lista cuyos
--      elementos son todos iguales entre sı́. 

primIguales :: (Eq a) => [a] -> [a]
primIguales [] = []
primIguales [x] = [x]
primIguales (x:xs) | x == head (xs) = x : primIguales xs
                   | x /= (head xs) = x : []
--              *Main> primIguales [3,3,4,1]
--              [3,3]
--              *Main> primIguales [4,3,3,4,1]
--              [4]
--              *Main> primIguales []
--              []
--              *Main> primIguales "aaadaa"
--              "aaa"

-- ### 11.b) Usá cualquier versión de primIgualesA para programar primIguales. Está permitido
--          dividir en casos, pero no usar recursión.

primIguales' :: (Eq a) => [a] -> [a]
primIguales' [] = []
primIguales' xs = primIgualesA' (head xs) xs
--              *Main> primIguales' [3,3,4,1]
--              [3,3]
--              *Main> primIguales' [4,3,3,4,1]
--              [4]
--              *Main> primIguales' []
--              []
--              *Main> primIguales' "aaadaa"
--              "aaa"

-- ### 12 * definı́ de manera recursiva la función cuantGen (denota la
--          cuantificación generalizada):
--              cuantGen :: (b -> b -> b) -> b -> [a] -> (a -> b) -> b
--              cuantGen op z xs t = ...
--          que tomando como argumento un operador op, su elemento neutro z, una lista de elementos
--          xs y una función término t, aplica el operador L a los elementos de la lista, transformados por
--          la función término.

cuantGen :: (b -> b -> b) -> b -> [a] -> (a -> b) -> b
cuantGen op z [] t = z
cuantGen op z (x:xs) t = op (t x) (cuantGen op z xs t)

-- reescribir 4 a) paraTodo
paratodoGen :: [a] -> (a -> Bool) -> Bool
paratodoGen xs t = cuantGen (&&) True xs t
--          *Main> paratodoGen [6] (>0)
--          True
--          *Main> paratodoGen [-6] (>0)
--          False

-- reescribir 4 b) existe
existeGen :: [a] -> (a -> Bool) -> Bool
existeGen xs t = cuantGen (||) False xs t
--          *Main> paratodoGen [6,2,78] (>0)
--          True
--          *Main> paratodoGen [-6,-2,-78] (>0)
--          False

-- reescribir 4 c) sumatoria
sumatoriaGen :: [a] -> (a -> Int) -> Int
sumatoriaGen xs t = cuantGen (+) 0 xs t
--          *Main> sumatoriaGen [1,2,3,-6] (*2)
--          0
--          *Main> sumatoriaGen [1,2,3,-2] (*2)
--          8

-- reescribir 4 d) productoria
productoriaGen :: [a] -> (a -> Int) -> Int
productoriaGen xs t = cuantGen (*) 1 xs t
--          *Main>  productoriaGen [2,3,5] (*2)
--          240
--          *Main>  productoriaGen [2,3,5] (*5)
--          3750

-- ### 13 *
distanciaEdicion::[Char]->[Char]-> Int
distanciaEdicion [] ys = length ys
distanciaEdicion xs [] = length xs
distanciaEdicion (x:xs) (y:ys) | x == y = distanciaEdicion xs ys
                               | x /= y = 1 + distanciaEdicion xs ys

                               *Main> distanciaEdicion ['a','b','c'] ['d', 'f', 'g']
--          3
--          *Main> distanciaEdicion ['a','b','c'] ['a', 'f', 'g']
--          2
--          *Main> distanciaEdicion ['a','b','c'] ['a', 'b', 'c']
--          0

-- ### 14 *

-- ### 15 *

-- a) f :: (a, b) -> ...
-- f (x , y) = ...
-- BIEN TIPADO, pide una tupla, y en la funcion se declara una tupla

-- b) f :: [(a, b)] -> ...
-- f (a , b) = ...
-- MAL TIPADO, pide una lista de tuplas, y en la definicion hay una tupla sin concatenar a una lista

-- c) f :: [(a, b)] -> ...
-- f (x:xs) = ...
-- BIEN TIPADO, pide una lista, y saca la primera tupla

-- d) f :: [(a, b)] -> ...
-- f ((x, y) : ((a, b) : xs)) = ...
-- BIEN TIPADO, pude una lista de tuplas, y se desarmo en una tupla concatenada a una tupla concatenada a una tupla

-- e) f :: [(Int, a)] -> ...
-- f [(0, a)] = ...
-- BIEN TIPADO, creo, porque primero es un int, y despues un a, pero una mejor sintaxis seria [(0, _)] si no se usa el a

-- ) f :: [(Int, a)] -> ...
-- f ((x, 1) : xs) = ...
-- BIEN TIPADO, bien tipado, es una tupla concatenado a una lista, x es int, y a puede ser cualquier cosa, por lo que puede ser 1

-- g ) f :: (Int -> Int) -> Int -> ...
-- f a b = ...
-- BIEN TIPADO, a en este caso es funcion, y b puede ser int

-- h) f :: (Int -> Int) -> Int -> ...
-- f a 3 = ..
-- BIEN TIPADO, a puede ser funcion, 3 es Int

-- i) f :: (Int -> Int) -> Int -> ...
-- f 0 1 2 = ...
-- MAL TIPADO, hay elementos extra de entrada para f, toma dos, se reciben 3

-- ## 16 * da al menos una definición cuando sea posible.

-- a) f :: (a, b) -> b  
-- f (x, y) = x

-- b) f :: (a, b) -> c
-- f (a, b) = a*b

-- c) f :: (a -> b) -> a -> b
-- f t a = t a

-- d) f :: (a -> b) -> [a] -> [b]
-- f t [] = []
-- f t (x:xs) = (t x) : f t xs