sumMultiplesBelow a b upper = 
	sum [x | x <- [1..upper - 1], 
		mod x a == 0 || mod x b == 0]
