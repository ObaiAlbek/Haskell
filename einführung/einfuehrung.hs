mypartition :: (a -> Bool) -> [a] -> ([a],[a])
mypartition _ [] = ([],[])
mypartition f (x:xs)
    | f x       = (x:ts, fs)
    | otherwise = (ts, x:fs)
  where
    (ts, fs) = mypartition f xs


myAll :: (a -> Bool)->[a] -> Bool
myAll _ [] = False
myAll f (x:xs) 
    | f x = True
    | otherwise = myAll f xs

myFibbonacie 1 = 0
myFibbonacie n = myFibbonacie(n-1) + myFibbonacie(n-2)


myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]


myFilter _ [] = []
myFilter f (x:xs) 
 | f x = x : myFilter f xs
 | otherwise = myFilter f xs


myZip _ [] = []
myZip [] _ = []
myZip (x:xs) (y:ys) = (x,y) : myZip xs ys

dotProduckt _ [] = 0
dotProduckt [] _ = 0
dotProduckt (x:xs) (y:ys) = x*y + dotProduckt xs ys



main :: IO()
main = print (dotProduckt [1,2,3] [4,5,6])