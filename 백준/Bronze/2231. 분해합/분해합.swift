let N = Int(readLine()!)!

func findGenerator(of number: Int) -> Int {
    for M in 1..<number {
        let sum = M + String(M).compactMap { $0.wholeNumberValue }.reduce(0, +)
        if sum == number {
            return M
        }
    }
    return 0
}

print(findGenerator(of: N))
