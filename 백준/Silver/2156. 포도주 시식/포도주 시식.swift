import Foundation

let n = Int(readLine()!)!

var wines: [Int] = [0] 

for _ in 0..<n {
    let wine = Int(readLine()!)!
    wines.append(wine)
}

var dp = Array(repeating: 0, count: n+1)

if n >= 1 {
    dp[1] = wines[1]
}

if n >= 2 {
    dp[2] = wines[1] + wines[2]
}

if n >= 3 {
    for i in 3...n {
        
        dp[i] = max(dp[i-1], max(dp[i-2] + wines[i], dp[i-3] + wines[i-1] + wines[i]))
    }
}

print(dp[n])
