import Foundation

let n = Int(readLine()!)!

var stairs = [Int]()

for _ in 0..<n {
    let score = Int(readLine()!)!
    stairs.append(score)
}

if n == 1 {
    print(stairs[0])
} else if n == 2 {
    print(stairs[1] + stairs[0])
} else {
     
    var dp = Array(repeating: 0, count: n+1)
    
    dp[0] = stairs[0]
    dp[1] = stairs[0] + stairs[1]
    dp[2] = max(stairs[0] + stairs[2], stairs[1] + stairs[2])

    for i in 3..<n {
        dp[i] = max(dp[i-2] + stairs[i], dp[i-3] + stairs[i-1] + stairs[i])

    }
    
    print(dp[n-1])
}
