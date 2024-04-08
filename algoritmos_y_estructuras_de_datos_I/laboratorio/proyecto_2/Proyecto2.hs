import Distribution.Simple.Utils (xargs)
import Distribution.SPDX (LicenseId(OLDAP_2_7))
-- Juan Mancini
-- 2024

-- # 1. a) Implementá el tipo Carrera como está definido arriba

data Carrera = Matematica | Fisica | Computacion | Astronomia

-- # 1. b) Definı́ la siguiente función, usando pattern matching : titulo :: Carrera -> String
--         que devuelve el nombre completo de la carrera en forma de string. Por ejemplo, para el
--         constructor Matematica, debe devolver ”Licenciatura en Matemática”.

titulo :: Carrera -> String
titulo Matematica = "Licenciatura en Matematica"
titulo Fisica = "Licenciatura en Fisica"
titulo Computacion = "Licenciatura en Ciencias de la Computacion"
titulo Astronomia = "Licenciatura en Astronomia"

-- # 1. c) Definir el tipo NotaBasica con constructores Do, Re, Mi, Fa, Sol, La y Si

-- data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si

-- # 1. d) Programar usando pattern matching la función:
--         cifradoAmericano :: NotaBasica −> Char
--         que relaciona las notas Do, Re, Mi, Fa, Sol, La y Si con los caracteres ’C’ , ’D’, ’E’,
--         ’F’, ’G’, ’A’ y ’B’ respectivamente.
cifradoAmericano :: NotaBasica -> Char
cifradoAmericano Do = 'C'
cifradoAmericano Re = 'D'
cifradoAmericano Mi = 'E'
cifradoAmericano Fa = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La = 'A'
cifradoAmericano Si = 'B'

-- # 2. a) Completar la definición del tipo NotaBasica para que las expresiones
--         *Main> Do <= Re
--         *Main> Fa `min` Sol
data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si deriving (Show, Eq, Ord, Bounded)

-- # 3. a) Definir usando polimorfismo ad hoc la funcion minimoElemento que calcula (de manera
--         recursiva) cual es el menor valor de una lista de tipo [a]. Asegurarse que solo este
--         definida para listas no vacias
minimoElemento :: Ord a => [a] -> a
minimoElemento [x] = x
minimoElemento (x:xs) = x `min` minimoElemento xs

-- # 3. b) Definir la función minimoElemento’ de manera tal que el caso base de la recursión
--         sea el de la lista vacı́a. Para ello revisar la clase Bounded.
minimoElemento' :: (Ord a, Bounded a) => [a] -> a
minimoElemento' [] = minBound 
minimoElemento' (x:xs) = x `min` minimoElemento' xs

-- Usar la función minimoElemento para determinar la nota más grave de la melodı́a:
-- [Fa, La, Sol, Re, Fa]

-- *Main> minimoElemento [Fa, La, Sol, Re, Fa]
-- Re

-- # 4. a)  Implementá el tipo Deportista y todos sus tipos accesorios (NumCamiseta, Altura,
--          Zona, etc) tal como están definidos arriba.
-- Sinónimos de tipo
type Altura = Int
type NumCamiseta = Int
-- tipos algebráicos sin parámetros (aka enumerados)
data Zona = Arco | Defensa | Mediocampo | Delantera deriving (Show, Eq, Ord, Bounded)
data TipoReves = DosManos | UnaMano deriving Show
data Modalidad = Carretera | Pista | Monte | BMX deriving Show
data PiernaHabil = Izquierda | Derecha deriving Show
-- siónimo
type ManoHabil = PiernaHabil 
-- deportista es un tipo algebraico con constructores paramétricos
data Deportista = Ajedrecista
                | Ciclista Modalidad
                | Velocista Altura
                | Tenista TipoReves ManoHabil Altura -- Constructor con tres argumentos
                | Futbolista Zona NumCamiseta PiernaHabil Altura deriving (Show)-- Constructor con ...

-- # 4. b) ¿Cuál es el tipo del constructor Ciclista? tipo algebraicos enumerado

-- # 4. c) Program ́a la funcion contar_velocistas :: [Deportista] -> Int que dada una
-- lista de deportistas xs, devuelve la cantidad de velocistas que hay dentro de xs

contarVelocistas :: [Deportista] -> Int
contarVelocistas [] = 0
contarVelocistas (Velocista _ :xs) = 1 + contarVelocistas xs 
contarVelocistas (x : xs)= contarVelocistas xs

-- *Main> contarVelocistas [(Velocista 170), (Velocista 169), Ajedrecista]
-- 2

-- # 4. d) Programa la funcion contar_futbolistas :: [Deportista] -> Zona -> Int que
--      dada una lista de deportistas xs, y una zona z, devuelve la cantidad de futbolistas
--      incluidos en xs que juegan en la zona z. Programa contar_futbolistas sin usar
--      igualdad, utilizando pattern matching

contarFutbolistas :: [Deportista] -> Zona -> Int
contarFutbolistas [] _ = 0
contarFutbolistas ((Futbolista Arco _ _ _):xs) Arco = 1 + contarFutbolistas xs Arco
contarFutbolistas ((Futbolista Defensa _ _ _):xs) Defensa = 1 + contarFutbolistas xs Defensa
contarFutbolistas ((Futbolista Mediocampo _ _ _):xs) Mediocampo = 1 + contarFutbolistas xs Mediocampo
contarFutbolistas ((Futbolista Delantera _ _ _):xs) Delantera = 1 + contarFutbolistas xs Delantera
contarFutbolistas (x:xs) z = contarFutbolistas xs z

-- let elDibu = Futbolista Arco 23 Derecha 195 
-- let messi = Futbolista Delantera 10 Derecha 170
-- let cutiRomero = Futbolista Defensa 13 Derecha 185
-- let julianAlvarez = Futbolista Delantera 9 Derecha 170
-- let laEscaloneta = [elDibu, messi, julianAlvarez, cutiRomero]

-- *Main> let laEscaloneta = [elDibu, messi, julianAlvarez, cutiRomero]
-- *Main> contarFutbolistas laEscaloneta Delantera
-- 2

-- # 4. e) ¿La funci ́on anterior usa filter? Si no es as ́ı, reprogramala para usarla.
esFutbolista :: Zona -> Deportista -> Bool
esFutbolista z' (Futbolista z _ _ _) = z == z'
esFutbolista _ _ = False

contarFutbolistas' :: [Deportista] -> Zona -> Int
contarFutbolistas' [] _= 0
contarFutbolistas' xs z = length (filter (esFutbolista z) xs)

-- *Main> contarFutbolistas' laEscaloneta Delantera 
-- 2
-- *Main> contarFutbolistas' laEscaloneta Defensa 
-- 1

-- # 5. a) Implementa la funcion sonidoNatural como esta definida arriba
sonidoNatural :: NotaBasica -> Int
sonidoNatural Do = 0
sonidoNatural Re = 2
sonidoNatural Mi = 4
sonidoNatural Fa = 5
sonidoNatural Sol = 7
sonidoNatural La = 9
sonidoNatural Si = 11

-- # 5. b) Definir el tipo enumerado Alteracion que consta de los constructores Bemol, Natural
-- y Sostenido
data Alteracion = Bemol | Natural | Sostenido deriving (Eq, Ord)

-- # 5. c ) Definir el tipo NotaMusical que consta de un unico constructor que toma dos parame-
-- tros. El primer parametro es de tipo NotaBasica y el segundo de tipo Alteracion.
-- De esta manera cuando se quiera representar una nota alterada se puede usar como
-- segundo par ́ametro del constructor un Bemol o Sostenido y si se quiere representar
-- una nota sin alteraciones se usa Natural como segundo par ́ametro
data NotaMusical = Nota NotaBasica Alteracion deriving (Eq, Ord)

miNota :: NotaMusical
miNota = Nota Do Sostenido  -- Representa la nota Do sostenido

-- # 5. d ) Definı la funcion sonidoCromatico :: NotaMusical -> Int que devuelve el sonido
-- de una nota, incrementando en uno su valor si tiene la alteracion Sostenido, decre-
-- mentando en uno si tiene la alteracion Bemol y dejando su valor intacto si la alteracion
-- es Natural

sonidoCromatico :: NotaMusical -> Int
sonidoCromatico (Nota n Natural) = sonidoNatural n
sonidoCromatico (Nota n Sostenido) = sonidoNatural n + 1
sonidoCromatico (Nota n Bemol) = sonidoNatural n - 1

--      *Main> sonidoCromatico (Nota Re Natural)
--      2
--      *Main> sonidoCromatico (Nota Re Sostenido)
--      3
--      *Main> sonidoCromatico (Nota Re Bemol)
--      1

-- # 5. e) Incluı el tipo NotaMusical a la clase Eq de manera tal que dos notas que tengan el
-- mismo valor de sonidoCromatico se consideren iguales

--      *Main> sonidoCromatico (Nota Mi Natural) == sonidoCromatico (Nota Fa Bemol)
--      True

-- # 5. f) Incluı el tipo NotaMusical a la clase Ord definiendo el operador <=. Se debe definir
-- que una nota es menor o igual a otra si y solo si el valor de sonidoCromatico para la
-- primera es menor o igual al valor de sonidoCromatico para la segunda

-- instance Ord NotaMusical where
--     compare (Nota firstNote firstAlteracion) (Nota secondNote secondAlteracion)
--         | sonidoCromatico (Nota firstNote firstAlteracion) == sonidoCromatico (Nota secondNote secondAlteracion)

-- # 6. a) a) Definir la funci´on primerElemento que devuelve el primer elemento de una lista no
--            vacia, o Nothing si la lista es vacia.
--            primerElemento :: [a] −> Maybe a
primerElemento :: [a] -> Maybe a
primerElemento [] = Nothing
primerElemento (x:xs) = Just x

-- # 7
data Cola = VaciaC | Encolada Deportista Cola deriving (Show)

-- # 7. a.1)
atender :: Cola -> Maybe Cola
atender VaciaC = Nothing
atender (Encolada n xs) = Just xs

--      *Main> atender (Encolada (Futbolista Arco 23 Derecha 195) (Encolada (Futbolista Delantera 10 Derecha 170) VaciaC))
--      Just (Encolada (Futbolista Delantera 10 Derecha 170) VaciaC)

--  # 7. a.2)
-- encolar :: Deportista -> Cola -> Cola
-- encolar deportista cola = Cola (deportista cola)

-- # 7. a.3)
busca :: Cola -> Zona -> Maybe Deportista
busca VaciaC _ = Nothing
busca (Encolada (Futbolista z n p a) cola) z' | z == z' = Just (Futbolista z n p a)
                                              | otherwise = busca cola z'
busca (Encolada _ cola) z' = busca cola z'

--      *Main> let fulbo = Encolada (Futbolista Arco 23 Derecha 195) VaciaC
--      *Main> busca fulbo Arco 
--      Just (Futbolista Arco 23 Derecha 195)
--      *Main> busca fulbo Delantera 
--      Nothing

-- # 7. b) Se parece a a las listas ngl fr no cap

-- # 8
data ListaAsoc a b = Vacia | Nodo a b ( ListaAsoc a b ) deriving Show
-- # 8. a) ¿Como se debe instanciar el tipo ListaAsoc para representar la informacion almacenada
-- en una guıa telefonica?
type GuiaTelefonica = ListaAsoc Int String
-- Tambien podria ser ListaAsoc String String si tuvieramos que usar guiones
-- ej: "351-777-666"

-- # 8. b) Programa las siguientes funciones:
--      1) la_long :: ListaAsoc a b -> Int que devuelve la cantidad de datos en una
--      lista.
laLong :: ListaAsoc a b -> Int
laLong Vacia = 0
laLong (Nodo _ _ lista) = 1 + laLong lista

--          *Main> let guia = Nodo 321777666 "jose" Vacia
--          *Main> guia
--          Nodo 321777666 "jose" Vacia
--          *Main> laLong guia
--          1
--          *Main> laLong Vacia
--          0

--      2) la_concat :: ListaAsoc a b -> ListaAsoc a b -> ListaAsoc a b, que de-
--      vuelve la concatenaci ́on de dos listas de asociaciones.
laConcat :: ListaAsoc a b -> ListaAsoc a b -> ListaAsoc a b
laConcat Vacia Vacia = Vacia
laConcat Vacia l = l
laConcat l Vacia = l
laConcat (Nodo a b l) lb = laConcat l (Nodo a b lb)

--      3) la_agregar :: Eq a => ListaAsoc a b -> a -> b -> ListaAsoc a b, que
--      agrega un nodo a la lista de asociaciones si la clave no est ́a en la lista, o actualiza
--      el valor si la clave ya se encontraba.

laAgregar :: Eq a => ListaAsoc a b -> a -> b -> ListaAsoc a b
laAgregar Vacia aK bK = (Nodo aK bK Vacia)
laAgregar (Nodo a b xs) aK bK | aK == a = (Nodo aK bK xs)
                              | otherwise = (Nodo a b (laAgregar xs aK bK))

--      4) la_pares :: ListaAsoc a b -> [(a, b)] que transforma una lista de asocia-
--      ciones en una lista de pares clave-dato.
laPares :: ListaAsoc a b -> [(a,b)]
laPares _ = []
laPares (Nodo a b xs) = (a,b) : laPares xs

--      5) la_busca :: Eq a => ListaAsoc a b -> a -> Maybe b que dada una lista
--      y una clave devuelve el dato asociado, si es que existe. En caso contrario devuelve
--      Nothing.

laBusca :: Eq a => ListaAsoc a b -> a -> Maybe b
laBusca Vacia _ = Nothing
laBusca (Nodo a b xs) key | a == key = Just b
                          | otherwise = laBusca xs key

--          Main> let arts = Nodo 1 "Dillom" (Nodo 2 "Lali" (Nodo 3 "Steve Wozniak" Vacia))
--          *Main> laBusca arts 2
--          Just "Lali"
--          *Main> laBusca arts 5
--          Nothing

--      6) la_borrar :: Eq a => a -> ListaAsoc a b -> ListaAsoc a b que dada
--      una clave a elimina la entrada en la lista.
laBorrar ::  Eq a => a -> ListaAsoc a b -> ListaAsoc a b
laBorrar _ Vacia = Vacia
laBorrar k (Nodo a b l) | k == a = l
                        | otherwise = (Nodo a b (laBorrar k l))

--                         *Main> laBorrar 7 arts
--                          Nodo 1 "Dillom" (Nodo 2 "Lali" (Nodo 3 "Steve Wozniak" Vacia))
--                          *Main> laBorrar 2 arts
--                          Nodo 1 "Dillom" (Nodo 3 "Steve Wozniak" Vacia)

-- 9) Punto *

data Arbol a = Hoja | Rama (Arbol a) a (Arbol a) deriving Show

-- Programa las siguientes funciones:
--  a) a_long :: Arbol a -> Int que dado un arbol devuelve la cantidad de datos alma-
--  cenados.

-- let arbolito = Rama Hoja "Hola Mundo :)" Hoja

aLong :: Arbol a -> Int
aLong Hoja = 1
aLong (Rama arb1 _ arb2) = 1 + aLong arb1 + aLong arb2 

--  b) a_hojas :: Arbol a -> Int que dado un arbol devuelve la cantidad de hojas.
aHojas :: Arbol a -> Int
aHojas Hoja = 1
aHojas (Rama arb1 _ arb2) = aLong arb1 + aLong arb2 
--  c) a_inc :: Num a => Arbol a -> Arbol a que dado un arbol que contiene numeros,
--  los incrementa en uno.
aInc :: Num a => Arbol a -> Arbol a
aInc Hoja = Hoja
aInc (Rama arb1 a arb2) = (Rama (aInc arb1) (a+1) (aInc arb2))

--        *Main> let arbolDeInts = Rama Hoja 1 Hoja
--        *Main> aInc arbolDeInts
--        Rama Hoja 2 Hoja

--  d) a_map :: (a -> b) -> Arbol a -> Arbol b que dada una funcion y un arbol,
--  devuelve el arbol con la misma estructura, que resulta de aplicar la funcion a cada uno
--  de los elementos del arbol. Revisa la definicion de la funcion anterior y reprogramala
--  usando a_map
aMap :: (a -> b) -> Arbol a -> Arbol b
aMap _ Hoja = Hoja
aMap f (Rama arb1 e arb2) = (Rama (aMap f arb1) (f e) (aMap f arb2))

--        *Main> let arbolDeInts = Rama Hoja 2 Hoja
--        *Main> aMap (*2) arbolDeInts
--        Rama Hoja 4 Hoja
