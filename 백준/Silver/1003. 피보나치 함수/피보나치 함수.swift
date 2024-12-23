import Foundation

var dp = [[Int]]()

func fibo(_ n: Int) -> [Int] {
    if n == 0 {
        return [1, 0] 
    }
    if n == 1 {
        return [0, 1]
    }
    
    // 이미 계산된 값이면 반환
    if n < dp.count && !dp[n].isEmpty {
        return dp[n]
    }
    
    // n에 대한 공간이 없다면 확장
    while dp.count <= n {
        dp.append([])
    }
    
    // f(n) = f(n-1) + f(n-2) 이므로
    // 각각의 호출 횟수도 같은 방식으로 계산됨
    let a = fibo(n-1)
    let b = fibo(n-2)
    dp[n] = [a[0] + b[0], a[1] + b[1]]
    
    return dp[n]
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let result = fibo(n)
    print("\(result[0]) \(result[1])")
}