import Foundation

let input = Int(readLine()!)!

// 입력값이 1이면 0을 출력하고 종료
if input == 1 {
    print(0)
} else {
    // 1보다 큰 경우 DP 배열 생성 및 계산 수행
    var dp = Array(repeating: 0, count: input + 1)

    for i in 2...input {
        // 1을 빼는 연산의 경우
        dp[i] = dp[i-1] + 1
        
        // 2로 나누어 떨어지는 경우 확인
        if i % 2 == 0 {
            dp[i] = min(dp[i], dp[i/2] + 1)
        }
        
        // 3으로 나누어 떨어지는 경우 확인
        if i % 3 == 0 {
            dp[i] = min(dp[i], dp[i/3] + 1)
        }
    }

    print(dp[input])
}