import Text.ParserCombinators.ReadPrec (step)
import Control.Monad (guard)
import Control.Monad.Trans.Writer (WriterT)
-- Gegeben: Drei Funktionen, die Maybe zurückgeben
safeDiv :: Int -> Int -> Maybe Int
safeDiv x 0 = Nothing
safeDiv x y = Just (x `div` y)

safeSqrt :: Int -> Maybe Double  
safeSqrt x 
    | x >= 0    = Just (sqrt (fromIntegral x))
    | otherwise = Nothing

safeAddTen :: Double -> Maybe Double
safeAddTen x = Just (x + 10)

-- 🔥 AUFGABE 1: 
-- Schreibe eine Funktion, die alle drei Operationen hintereinander ausführt:
-- 1. Division: x `div` y
-- 2. Wurzel aus Ergebnis  
-- 3. +10 zum Ergebnis
-- Schreibe die Funktion mit do-Notation
berechnenElegant :: Int -> Int -> Maybe Double
berechnenElegant x y = do
   test <- safeDiv x y
   test2 <- safeSqrt test
   safeAddTen test2



safeDivide :: Double -> Double -> Maybe Double
safeDivide _ 0 = Nothing
safeDivide x y = Just (x / y)


pairs :: [Int] -> [Int] -> [(Int, Int)]
pairs list1 list2 = [(x,y)| x <- list1, y <- list2, x < y ]

pairsMonad :: [Int] -> [Int] -> [(Int, Int)]
pairsMonad list1 list2 = do
    x <- list1
    y <- list2
    myGuard (x < y)
    return (x,y) 

pairsMonadV2 :: [Int] -> [Int] -> [(Int, Int)]
pairsMonadV2 list1 list2 = 
    list1 >>= \x ->
    list2 >>= \y ->
    myGuard (x < y) >>
    return (x,y)


myGuard :: Bool -> [()]
myGuard False = []
myGuard True = [()]









