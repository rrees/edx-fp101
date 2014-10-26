
my_remove (n, xs) = take n xs ++ drop (n + 1) xs

my_funct :: Int -> [a] -> [a]
my_funct i xs = take (i + 1) xs ++ drop i xs

my_logic_and a b = if a then b else False