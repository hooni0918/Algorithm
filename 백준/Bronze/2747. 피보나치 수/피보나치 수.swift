import Foundation

let N = Int(readLine()!)!

var dp = Array(repeating: 0, count: N+1 )

if N >= 1 {
    dp[1] = 1
}

if N >= 2 {
 
    for i in 2...N {
        dp[i] = dp[i-1] + dp[i-2]
        
    }
}
print(dp[N])
