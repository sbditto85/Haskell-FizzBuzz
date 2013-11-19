fizz :: Integer -> String
fizz num | num `mod` 15 == 0 = "fizzbuzz"
         | num `mod` 3 == 0 = "fizz"
         | num `mod` 5 == 0 = "buzz"
         | otherwise = show num

fizzbuzz :: [String]
fizzbuzz = [fizz x | x <- [1..]]

main :: IO ()
main = putStrLn $ unlines $ take 100 fizzbuzz
