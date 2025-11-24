{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Avoid reverse" #-}
{-# HLINT ignore "Use void" #-}

import Data.Char (toUpper)
import Data.List (sort, sortOn)
import Test.HUnit
import Data.Tuple (fst)

names = ["Oliver", "Emma", "Liam", "Ava", "Noah", "Sophia", "James", "Mia", "Elijah", "Isabella"]

ages = [25, 30, 22, 29, 35, 28, 40, 26, 33, 31]

-- we are looking for the UPPERCASE names of the two oldest persons whose names ends with an a sorted alphabetically"

list = ["Oliver", "Emma", "Liam", "Ava", "Noah", "Sophia", "James", "Mia", "Elijah", "Isabella"]

namenUpper = map (map toUpper) list

zipNamesAndAges = zip namenUpper ages 


sortAge = sortOn snd zipNamesAndAges


reverseList = reverse sortAge --[("JAMES",40),("NOAH",35),("ELIJAH",33),("ISABELLA",31),("EMMA",30),("AVA",29),("SOPHIA",28),("MIA",26),("OLIVER",25),("LIAM",22)]


onlyNames = take 2 $ [name| (name,_) <- reverseList, last name == 'A' ]

-- extractedNames = reverse onlyNames

-- oder Kürzer Weg:
extractedNames = 
    sort
    $ map (map toUpper . fst)
    $ take 2 $ reverse  $ sortOn snd
    filter ((== 'a').last.fst)  -- mit filter Lambda filter(\(x,_)->last x == 'a')
    $ zip names ages

test1 = Test.HUnit.TestCase (assertEqual "ExtractedNames" ["EMMA", "ISABELLA"] extractedNames)

tests = TestList [test1]

main :: IO ()
main = runTestTT test1 >> return ()