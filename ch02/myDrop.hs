-- file: ch02/myDrop.hs
-- implementation of the drop expression
myDrop n xs = if n <= 0 || null xs
    then xs
    else myDrop (n - 1) (tail xs)
