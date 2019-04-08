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

-- Consider three two-dimensional points a, b, and c. 
-- If we look at the angle formed by the line segment from a to b and 
-- the line segment from b to c, it either turns left, turns right, or 
-- forms a straight line. 
-- Define a Direction data type that lets you represent these possibilities

data Direction = DLeft | DRight | DStraight deriving (Show)
data Point2D = Point2D Double Double deriving (Eq, Show)

calcDirection :: Point2D -> Point2D -> Point2D -> Direction
calcDirection (Point2D px1 py1) (Point2D px2 py2) (Point2D px3 py3)
              | la+ua > hrad = DRight
              | la+ua < hrad = DLeft
              | otherwise = DStraight
                  where la = atan ((py2-py1)/(px2-px1)) --lower angle
                  ua = atan ((px3-px2)/(py3-py2)) --upper angle
                  hrad = 0.5*pi
