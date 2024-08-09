import Foundation

// 입력 받기
let n = Int(readLine()!)!

// 2^N + 1의 값을 계산
let points = Int(pow(2.0, Double(n))) + 1

// 점의 수를 계산
let result = points * points

// 결과 출력
print(result)
