
my_concat [] = []
my_concat (xs: xss) = xs ++ concat xss

my_replicate 0 _  = []
my_replicate n x = x : replicate (n - 1) x

my_elem _ [] = False
my_elem x (y: ys)
	| x == y = True
	| otherwise = elem x (y : ys)

halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

my_merge [] ys = ys
my_merge xs [] = xs
my_merge (x : xs) (y : ys)
	= if x <= y then x : my_merge xs (y : ys) else y : my_merge (x:xs) ys

msort [] = []
msort [x] = [x]
msort xs = my_merge (msort ys) (msort zs)
	where (ys, zs) = halve xs

(^^^) :: Integer -> Integer -> Integer
m ^^^ 0 = 0
m ^^^ n = m * m ^^^ (n - 1)


my_and :: [Bool] -> Bool
my_and [] = True
my_and (b:bs)
	| b = and bs
	| otherwise = False