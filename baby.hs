doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
    then x
    else x*2

doubleSmallNumber' x = (if x> 100
    then x
    else x*2)+1

conanO'Brien = "It's a-me, Conan O'Brien!"

boomBang xs = [if x<10 
    then "BOOM!"
    else "BANG!"
    | x <- xs, odd x]

tripleSum a b c = a + b + c

square x = x * x

length' xs = sum [1 | _ <- xs]

removeUpperCase xs = [x | x<- xs,elem x ['a'..'z']]

removeNonUpperCase st = [st | c <- st, elem c ['A'..'Z']]

rightAngled = [(a,b,c)|a <- [1..10],b<-[1..a],c<-[1..b],square c + square b == square a,tripleSum a b c == 24]

rightAngledTriangles max per = [(a,b,c)|a <- [1..max],b<-[1..a],c<-[1..b],square c + square b == square a,tripleSum a b c == per]