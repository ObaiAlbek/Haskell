import Data.Char (toUpper)
import Data.List (sort, sortOn)
import Test.HUnit

names :: [String]
names = ["Oliver", "Emma", "Liam", "Ava", "Noah", "Sophia", "James", "Mia", "Elijah", "Isabella"]

ages :: [Int]
ages  = [25, 30, 22, 29, 35, 28, 40, 26, 33, 31]

-- | Extracts the two oldest persons whose names end with 'a',
--   converts them to uppercase, and returns them sorted alphabetically.
extractedNames :: [String]
extractedNames =
    sort
    . map (map toUpper . fst)
    . take 2
    . reverse
    . sortOn snd
    . filter ((== 'a') . last . fst)
    $ zip names ages

-- Test
test1 :: Test
test1 = TestCase (assertEqual "ExtractedNames" ["EMMA", "ISABELLA"] extractedNames)

main :: IO ()
main = runTestTT test1 >> return ()
