
n = a `div` length xs
	where
		a = 10
		xs = [1,2,3,4,5]

my_init xs = reverse (tail (reverse xs))

my_double x = x + x