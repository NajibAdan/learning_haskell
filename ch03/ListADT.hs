-- file: ch03/ListADT.hs
data List a = Cons a (List a)
            | Nil
              deriving (Show)
-- takes any value of type [a], and produces a value of type List a
fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil
