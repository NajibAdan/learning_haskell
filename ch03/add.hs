-- file: ch03/add.hs
-- implementation of not
myNot True  = False
myNot False = True
-- This function adds together the elements of a list.
sumList (x:xs) = x + sumList xs
sumList []     = 0