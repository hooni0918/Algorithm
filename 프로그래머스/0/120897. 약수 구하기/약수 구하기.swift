func solution(_ n: Int) -> [Int] {
    var factors = [Int]()

    for i in 1...n {
        if n % i == 0 {
            factors.append(i)
        }
    }

    return factors
}
