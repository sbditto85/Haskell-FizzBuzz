fizzbuzz :: [String]
fizzbuzz = foldr (\x acc -> (fizz x):acc) [] [1..]
  where fizz num
          | num `mod` 15 == 0 = "fizzbuzz"
          | num `mod` 3 == 0 = "fizz"
          | num `mod` 5 == 0 = "buzz"
          | otherwise = show num

main :: IO ()
main = putStrLn $ unlines $ take 100 fizzbuzz
