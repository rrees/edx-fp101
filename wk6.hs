
my_all :: (a -> Bool) -> [a] -> Bool
my_all p xs = and (map p xs)