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
data TipoReves = DosManos | UnaMano
data Modalidad = Carretera | Pista | Monte | BMX
data PiernaHabil = Izquierda | Derecha
-- siónimo
type ManoHabil = PiernaHabil
-- deportista es un tipo algebraico con constructores paramétricos
data Deportista = Ajedrecista
                | Ciclista Modalidad
                | Velocista Altura
                | Tenista TipoReves ManoHabil Altura -- Constructor con tres argumentos
                | Futbolista Zona NumCamiseta PiernaHabil Altura -- Constructor con ...

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

