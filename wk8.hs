
putStr' :: String -> IO ()

putStr' [] = return ()
putStr' (x:xs) = putChar x >> putStr' xs

putStrLn' :: String -> IO ()

putStrLn' [] = putChar '\n'
putStrLn' xs = putStr' xs >> putChar '\n'

getLine' :: IO String

getLine' = get " "

get :: String -> IO String

get xs
	= do x <- getChar
		case x of 
			'\n' -> return xs
			_ -> get (x : xs)