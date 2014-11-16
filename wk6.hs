
my_all :: (a -> Bool) -> [a] -> Bool
my_all p xs = and (map p xs)

compose :: [a -> a] -> (a -> a)
compose = foldr (.) id

sumsqreven = compose [sum, map (^ 2), filter even]