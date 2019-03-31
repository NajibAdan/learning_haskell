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