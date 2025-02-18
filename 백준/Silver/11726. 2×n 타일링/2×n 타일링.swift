import Foundation

let n: Int = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: n+1)

if n < 3 {
    for i in 0 ... n {
        dp[i] = i
    }
    print(dp[n])
} else {
    dp[1] = 1
    dp[2] = 2
    for i in 3 ... n {
        dp[i] = dp[i-1] + dp[i-2]
        dp[i] %= 10007
    }
    print(dp[n])
}
