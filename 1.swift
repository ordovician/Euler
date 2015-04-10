func multiples(max: Int) -> Int {
    var sum = 0
    for x in 1..<max {
        if x % 3 == 0 || x % 5 == 0 {
            sum += x
        }
    }
    return sum
}

// println(multiples(1000))
