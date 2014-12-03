isPal :: Int -> Bool
isPal x =  s == reverse s where s = show x

products = [x * y | x <- [999,998..1], y <- [999,998..1], isPal (x * y)]
largestPalindrome = maximum products