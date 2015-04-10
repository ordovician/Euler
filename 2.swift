func fib(i: Int) -> Int {
    switch i {
    case 1, 2: return i
    default:
        var sum = 0
        var (first, second) = (1, 2)
        for j in 3...i {
            sum = first + second
			first = second
            second = sum
        }
        return sum
    }
}

func evensum(max: Int) -> Int {
    var i = 1
    var sum = 0
    var value = 0
    while value < max {
        value = fib(i)
        if value % 2 == 0 {
            sum += value
        }
        i += 1
    }
    return sum
}

// println(evensum(Int(4e6)))