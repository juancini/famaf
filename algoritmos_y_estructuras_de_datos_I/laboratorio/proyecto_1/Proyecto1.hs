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

-- ## 6.g) Programar la función multiplicaPrimos :: [Int] -> Int que calcula el producto 
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