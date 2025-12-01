import GHC.Base (VecElem(Int16ElemRep))
{- berechneGehalt :: Int -> Int
berechneGehalt punkte = 
    let
        bonus = 100
        faktor = 2
    in
        (punkte * faktor) + bonus -}


inRange min max x = ilb && iub 
    where
        ilb = min <= x
        iub = max >= x




{- istGerade :: Int -> Bool
istGerade x     
    | x `mod` 2 == 0 = True
    | otherwise = False -}

{- istGerade :: Int -> Bool
istGerade x = 
    let
        gerade = x `mod`2 == 0
    in
        gerade -}

istGerade :: Int -> Bool
istGerade x = gerade 
 where
    gerade = x `mod`2 == 0


begruessung :: String -> String
begruessung name = "Hallo" ++ " " ++  name

kreisFlaeche :: Float -> Float
kreisFlaeche r = 
    if r > 0 then
        pi * (r*r)
    else
        0.0

wurzeln :: Float -> Float -> Float -> (Float, Float)
wurzeln a b c = (x1, x2)
  where
    -- 1. Definiere die Diskriminante als Hilfsvariable
    d = sqrt (b*b - 4*a*c)
    
    -- 2. Definiere die beiden Lösungen mit der Hilfsvariablen
    x1 = (-b + d) / (2*a)
    x2 = (-b - d) / (2*a)


wurzelFunktion :: Float -> Float -> Float
wurzelFunktion p q = sqrt ((p/2)*(p/2) - q)

pqFormel :: Float -> Float -> (Float, Float)
pqFormel p q =
    let
        wurzel = wurzelFunktion p q
        x1 = -(p/2) + wurzel 
        x2 = -(p/2) - wurzel 
    in 
        (x1, x2)

notenText :: Int -> String
notenText punkte 
    |punkte > 90 = "Sehr Gut"
    |punkte > 60 = "Gut"
    |otherwise = "schlecht"


berechneGehalt :: Int -> Int
berechneGehalt punkte = (punkte * faktor) + bonus
    where
        bonus = 100
        faktor = 2

berechneGehalt2 :: Int -> Int
berechneGehalt2 punkte = 
    let
        bonus = 100
        faktor = 2
    in
        (punkte * faktor) + bonus 
        
{- summeBis :: [Int] -> Int
summeBis [] = 0
summeBis (x:xs) = x + summeBis xs -}

potenz :: Int -> Int -> Int --x = 2 ,n = 3
potenz x n 
    | n == 1 = x
    | otherwise = x * potenz x (n-1)

    --potenz 2 3 =  2 * 4
    --potenz 2 2 =  2 * 2 = 4
    --potenz 2 1 = 2


fibonacci :: Int -> Int
fibonacci zahl 
    | zahl == 0 || zahl == 1 = zahl
    | otherwise = fibonacci(zahl - 1) + fibonacci( zahl - 2)


fac n = fac n 1 
    where
    fac n acc
        | n <= 1    = acc
        | otherwise = fac (n-1) (n*acc)



meineLaenge :: [a] -> Int
meineLaenge [] = 0
meineLaenge (x:xs) = 1 + meineLaenge xs
--meineLaenge (1:[2,3]) = 1 + meineLaenge [2,3]
--meineLaenge (2:[3]) = 1 + meineLaenge [3] ( 1)
--meineLaenge (3:[]) = 1 + meineLaenge [](0)

produktListe :: [Int] -> Int
produktListe [] = 1
produktListe (x:xs) = x * produktListe xs
--produktListe [1, 2, 3, 4] = 1 * produktListe [ 2, 3, 4] 
--produktListe [ 2, 3, 4] =  2* produktListe [ 3, 4] 
--produktListe [ 3, 4] = 3 * produktListe [  4] * 4 = 12
--produktListe [ 4] = 4 * produktListe [] = 1 

istEnthalten ::   Int -> [Int] -> Bool
istEnthalten _ [] = False
istEnthalten elem (x:xs)
    | x == elem = True
    | otherwise = istEnthalten elem xs


myeven :: [Int] -> [Int]
myeven [] = []
myeven liste = [x +2 | x <- liste , x `mod` 2 == 0 ]


addTuples :: [(Int,Int)] -> [Int]
addTuples [] = []
addTuples (x:xs) = 
    let
        f = fst x
        s = snd x
        result = (f + s) :addTuples xs
    in
        result 


-- Deine ALTE Funktion (0-basiert)
elementat :: [a] -> Int -> a
elementat (x:xs) 0 = x
elementat (x:xs) n = elementat xs (n-1)
elementat [] _     = error "Index zu gross!"



myLast :: [a] -> a
myLast[x]= x 
myLast (x:xs) = myLast xs


myReverse :: [Int] -> [Int]
myReverse [] = []
myReverse list = last list : myReverse (init list)


isPalindrome  :: (Eq a) => [a] -> Bool
isPalindrome list = list == reverse list


compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:y:xs) 
    | x /= y = x : compress  (y:xs) 
    |otherwise = compress (y:xs)


myfilter :: (Int -> Bool) -> [Int] -> [Int]
myfilter _ [] = []

myfilter f (x:xs) 
    |  f x = x : myfilter f xs
    | otherwise = myfilter f xs

myfilter2 ::  [Int] -> [Int]
myfilter2 list = [x| x <- list, x > 2 ]


quadratSumme :: (Int -> Int) -> [Int] -> Int
quadratSumme _ [] = 0

quadratSumme f (x:xs) = (f x) + quadratSumme f xs


laengenFilter :: (Int -> Bool) ->[String]  -> [String]
laengenFilter _ []  = []

laengenFilter f (x:xs)  
    | f (meineLaenge x) = x : laengenFilter f xs 
    | otherwise = laengenFilter f xs


myfindIndex :: [Int] -> Int -> Int
myfindIndex (x:_) 1 = x 
myfindIndex [] _ = error "Falsch"
myfindIndex (x:xs) n 
    | x == n = xs !! x
    | otherwise = myfindIndex xs (n-1)



binarySearch :: [Int] -> Int -> Int 
binarySearch [] _ = 0
binarySearch list target = search 0 (length list -1)
    where
        search low heigh
            | low < heigh = -1
            | list !! mid == target = mid 
            | list !! mid < target = search (mid +1) heigh
            | otherwise = search low (mid -1)
            where
                mid = (low + heigh) `div` 2

dupli :: [Int] -> [Int]
dupli [] = []
dupli (x:xs) = [x,x] ++ dupli xs 

repli :: [Int] -> Int -> [Int]
repli [] _ = []
repli (x:xs) n = wiederhole x 1 ++ repli xs n
    where
        wiederhole element number
            | number > n = []
            | otherwise = element : wiederhole element (number +1)



data Person = Person{
    name :: String,
    id :: Int
}


instance Eq Person where
    (Person _ id1) == (Person _ id2) = id1== id2
        



data Ampel a = Rot | Gelb | Gruen a deriving (Show)

ampelFuerAutos :: Ampel String
ampelFuerAutos = Gruen "Autos dürfen fahren"

addiere :: Int -> Int
addiere x =  x +1 

insertion :: (Ord a) => [a] -> [a]
insertion [] = []
insertion (x:xs) = sortiere x (insertion xs)
    where
        sortiere n [] = [n]
        sortiere n (y:ys)
            | n < y = [n, y] ++ ys
            | otherwise =  y : sortiere n ys



isPerfect :: Int -> Bool
isPerfect n = axx n 1 0
    where 
        axx number i summe
            | number `mod` i == 0 = axx number (i+1) (summe + i)
            | summe == number = True
            | otherwise = axx number (i+1) summe

findTeiler :: Int -> [Int]
findTeiler n = foldl (\acc x -> if n `mod` x == 0 then x : acc else acc ) [] [1..n-1]

findGemeinamerteiler :: Int -> Int -> Int

findGemeinamerteiler x _ = head (findTeiler x)


myZip :: [Int] -> [String] -> [(Int,String)]
myZip [] _ = []
myZip _ [] = []
myZip (x:xs) (y:ys) = (x,y) : myZip xs ys


prime :: Int -> [Int]
prime zahl = [x | x <- [2..zahl], all ((/=0) . (x `mod`)) [2..x-1]]

skalarprodukt :: [Int] ->[Int] -> Int
skalarprodukt [] _ = 0
skalarprodukt _ [] = 0
skalarprodukt (x:xs) (y:ys) = x * y + skalarprodukt xs ys

skalarprodukt2 :: [Int] ->[Int] -> Int
skalarprodukt2 list1 list2 = sum [x * y| (x,y) <- zip  list1 list2]


summeToN :: Int -> [Int]
summeToN 0 = []
summeToN n = 0+n : summeToN(n-1)




main :: IO()
main = print ( reverse $ summeToN 10)

