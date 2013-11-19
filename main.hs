main = do
	putStrLn $ unlines $ fizzbuzz $ take 100 [1..]
	where fizzbuzz xl = foldr (\x acc -> (fizz x):acc ) [] xl
		where fizz num 
			| num `mod` 15 == 0 = "fizzbuzz"
			| num `mod` 3 == 0 = "fizz"
			| num `mod` 5 == 0 = "buzz"
			| otherwise = show num