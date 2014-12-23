largestFactor x = head (dropWhile p [x-1, x-2..1]) 
    where p y = x `mod` y /= 0

lpf 1 = 1
lpf x | nextFactor == 1  = factor
      | otherwise        = lpf factor
    where factor = largestFactor x
          nextFactor = largestFactor factor 

-- Doesn't work, or at least way slower than fast julia version
fast' :: Int -> Int -> Int
fast' 1 1 = 1
fast' n i | mod n i == 0 = fast' (div n i) 1
          | i < n - 1    = fast' n (i + 1)
          | otherwise    = n

fast :: Int -> Int
fast n = fast' n 2

-- alt n =
--
--    where xs = [2, 3 ..]
--          sf n = find (\x -> 0 == mod n x) xs
   