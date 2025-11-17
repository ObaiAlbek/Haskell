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



main :: IO()
main = print (myAll (>0) [1,2,3,4])