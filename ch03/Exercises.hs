import Data.List

-- returns the length of a list
myLength (a:xs) = 1 + myLength xs
myLength [] = 0

-- sums the elements
mySum (a:xs) = a + mySum xs
mySum [] = 0

-- returns the mean of a list
myMean elem = mySum elem / ( fromIntegral (myLength elem) )

-- creates a palindrome of a list
myPalindrome xs = xs ++ reverse xs

-- checks if a word or list is a palindrome
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = False
isPalindrome (x:[]) = True
isPalindrome (x:y:[]) = x == y
isPalindrome (x:xs) = x == last xs && isPalindrome (init xs)

-- sorts lists
sortLists :: [[a]] -> [[a]]
sortLists list = sortBy compLength list
                where compLength a b = compare (length a) (length b)

-- implementation of intersperse
myIntersperse :: a -> [[a]] -> [a]
myIntersperse sep xs
            | null(xs) = []
            | null(tail xs) = head xs
            | otherwise = (head xs) ++ [sep] ++ myIntersperse sep (tail xs)
            
-- shows the lenght of a binary tree
lenTree :: Tree a -> Int
lenTree x = case x of
Empty -> 0
Node x y z -> 1 + (lenTree y) + (lenTree z)
