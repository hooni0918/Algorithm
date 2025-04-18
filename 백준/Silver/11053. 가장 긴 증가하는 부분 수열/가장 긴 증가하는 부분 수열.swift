import Foundation

let n = Int(readLine()!)!
var sequence = readLine()!.split(separator: " ").map { Int($0)! }

var count : [Int] = []

var dp = Array(repeating: 1, count: n)

for i in 0..<n {
    for j in 0..<i {
        if sequence[j] < sequence[i] {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}

print(dp.max()!)
