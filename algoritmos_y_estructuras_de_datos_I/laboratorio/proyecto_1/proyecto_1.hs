{-# LANGUAGE NPlusKPatterns #-}

-- # Ejercicios
-- ## 1) programa las siguientes funciones
-- ### a) esCero :: Int -> Bool, que verifica si un entero es igual a 0.

esCero :: Int -> Bool
esCero x = x == 0

-- ### b) esPositivo :: Int -> Bool, que verifica si un entero es estrictamente mayor a 0.
esPositivo :: Int -> Bool
esPositivo x = x > 0


-- ### c) esVocal :: Char -> Bool, que verifica si un caracter es una vocal en minúscula.
esVocal :: Char -> Bool
esVocal x = x `elem` ['a','e','i','o','u']

-- ### d) valorAbsoluto :: Int -> Int, que devuelve el valor absoluto de un entero ingresado.
valorAbsoluto :: Int -> Int
valorAbsoluto x = abs x

-- ## 2. Programá las siguientes funciones usando recursión o composición:

-- ### a) todos.xs = h ∀ i : 0 ≤ i < #xs : xs.i i (derivar en el teórico primero)
--        paratodo :: [Bool] -> Bool, que verifica que todos los elementos de una lista
--        sean True.
paraTodo :: [Bool] -> Bool
paraTodo [] = True
paraTodo (x:xs) = x && paraTodo xs

-- ### b) sumatoria :: [Int] -> Int, que calcula la suma de todos los elementos de una
--        lista de enteros.
sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs