fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib x = fib (x - 1) + fib (x - 2)

--fibs :: Int -> [Int]
--fibs 1 = [1]
--fibs 2 = [2, 1]
--fibs x = ((head (fibs (x - 1))) + (head (fibs (x - 2)))):fibs (x - 1)

fibs' :: [Int] -> [Int]
fibs' [] = [1]
fibs' [1] = [2, 1]
fibs' all@(x1:x2:xs) = (x1 + x2):all    

fibs max = takeWhile

evenFibSum :: Int -> Int
evenFibSum upper = sum [x | x <- map fib [1..], x < upper, even x]

