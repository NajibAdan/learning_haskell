import Data.List

myLength (a:xs) = 1 + myLength xs
myLength [] = 0

mySum (a:xs) = a + mySum xs
mySum [] = 0

myMean elem = mySum elem / ( fromIntegral (myLength elem) )

myPalindrome xs = xs ++ reverse xs

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = False
isPalindrome (x:[]) = True
isPalindrome (x:y:[]) = x == y
isPalindrome (x:xs) = x == last xs && isPalindrome (init xs)

sortLists :: [[a]] -> [[a]]
sortLists list = sortBy compLength list
                where compLength a b = compare (length a) (length b)
myIntersperse :: a -> [[a]] -> [a]
myIntersperse sep xs
            | null(xs) = []
            | null(tail xs) = head xs
            | otherwise = (head xs) ++ [sep] ++ myIntersperse sep (tail xs)