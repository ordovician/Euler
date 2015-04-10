func fast(n: Int) -> Int { 
    for i in 2..<n { 
        if n % i == 0 { 
            return fast(n/i) 
        } 
    } 
    return n 
}

// println(fast(600851475143))