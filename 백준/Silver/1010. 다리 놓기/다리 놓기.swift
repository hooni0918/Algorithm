import Foundation

// DP를 위한 2차원 배열 선언
var dp = Array(repeating: Array(repeating: 0, count: 30), count: 30)

// 조합을 계산하는 함수 (DP 활용)
func combination(_ n: Int, _ r: Int) -> Int {
    // 이미 계산된 값이 있다면 반환
    if dp[n][r] > 0 {
        return dp[n][r]
    }
    
    // 기본 케이스
    if r == 0 || r == n {
        dp[n][r] = 1
        return dp[n][r]
    }
    
    // nCr = n-1Cr-1 + n-1Cr
    dp[n][r] = combination(n-1, r-1) + combination(n-1, r)
    return dp[n][r]
}

// 테스트 케이스 개수 입력
let t = Int(readLine()!)!

// 각 테스트 케이스 처리
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0] // 서쪽 사이트 개수
    let m = input[1] // 동쪽 사이트 개수
    
    // mCn 계산하여 출력
    print(combination(m, n))
}