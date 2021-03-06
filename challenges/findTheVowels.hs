-- We want to know the index of the vowels in a given word, for example, there are two vowels in the word super (the second and fourth letters).

-- So given a string "super", we should return a list of [2, 4].

-- Some examples:
-- Mmmm  => []
-- Super => [2,4]
-- Apple => [1,5]
-- YoMama -> [1,2,4,6]
-- NOTE: Vowels in this context refers to English Language Vowels - a e i o u y

-- NOTE: this is indexed from [1..n] (not zero indexed!)

vowelIndices :: String -> [Integer]
vowelIndices word = [ x | (x,y) <- zip [1..] word, y `elem` "aeiouyAEIOUY"]

-- =============================================================
-- Others Solutions
-- =============================================================

-- import Data.List(findIndices)

-- vowelIndices :: String -> [Integer]
-- vowelIndices word = map ((+1) . toInteger) $ findIndices (`elem` "aeiouyAEIOUY") word

-- =============================================================

-- import Data.Char

-- vowelIndices :: String -> [Integer]
-- vowelIndices word = map snd $ filter isVowel wordWithIndex
--     where isVowel t = (toLower (fst t)) `elem` "aeiouy"
--           wordWithIndex = zip word [1..]
