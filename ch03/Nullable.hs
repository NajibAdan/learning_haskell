-- file: ch03/Nullable.hs
data Maybe a = ReallyJust a
             | ReallyNothing
             deriving (Show)

someBool = ReallyJust True

someString = ReallyJust "something"

wrapped = ReallyJust (ReallyJust "wrapped")