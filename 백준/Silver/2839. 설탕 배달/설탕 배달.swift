import Foundation

var input = Int(readLine()!)!

var dp = Array(repeating: 5001, count: input + 1)
 
dp[0] = 0

for i in 1...input {
    
    if i >= 3 {
        dp[i] = min(dp[i],dp[i-3]+1)
        
    }
    
    if i >= 5 {
        dp[i] = min(dp[i],dp[i-5]+1)
        
    }

        
}

print(dp[input] == 5001 ? -1 : dp[input])
