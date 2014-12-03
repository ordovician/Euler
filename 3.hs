largestFactor x = head (dropWhile p [x-1, x-2..1]) 
    where p y = x `mod` y /= 0

lpf 1 = 1
lpf x | nextFactor == 1  = factor
      | otherwise        = lpf factor
    where factor = largestFactor x
          nextFactor = largestFactor factor 