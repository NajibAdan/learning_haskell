-- file: ch02/lastButOne.hs
-- takes a list and returns the element before the last one

lastButOne xs = if (length xs) <= 2
                then head xs
                else lastButOne (tail xs)