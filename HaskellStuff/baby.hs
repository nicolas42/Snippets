doubleMe x = x + x
doubleUs x y = 2*x + 2*y
doubleSmallNumber x = if x > 100 then 2*x else x

pythagoras a b = sqrt( a*a + b*b )

-- product :: (Num a) => [a] -> a
-- product [] = 0
-- product (x:xs) = x * product xs

sum' :: (Num a) => [a] -> a
sum'[] = 0
sum' (x:xs) = x + sum' xs

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)  
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)  

head' :: [a] -> a  
head' [] = error "Can't call head on an empty list, dummy!"  
head' (x:_) = x  

capital :: String -> String  
capital "" = "Empty string, whoops!"  
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]  


quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let smallerSorted = quicksort [a | a <- xs, a <= x]  
        biggerSorted = quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted  



chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain x | even x = x: chain (x `div` 2)
        | odd x = x: chain (3*x + 1)


factorial :: Integer -> Integer
factorial 1 = 1
factorial x = x * factorial (x-1)


zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]  
zipWith' _ [] _ = []  
zipWith' _ _ [] = []  
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys  


makeTuples :: [a] -> [b] -> [(a,b)]
makeTuples [] _ = []
makeTuples _ [] = []
makeTuples (x:xs) (y:ys) = (x,y):makeTuples xs ys

reverseWords :: [Char] -> [Char]
reverseWords = unwords . map reverse . reverse . words 

primes = filterPrime [2..] 
  where filterPrime (p:xs) = 
          p : filterPrime [x | x <- xs, x `mod` p /= 0]

-- filterPrime (p:xs) = p : filterPrime [ x | x<-xs, x `mod` p /= 0 ]

