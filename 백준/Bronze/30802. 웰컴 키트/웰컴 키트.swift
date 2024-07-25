import Foundation

// 입력 받기
let N = Int(readLine()!)!
let sizes = readLine()!.split(separator: " ").map { Int($0)! }
let TP = readLine()!.split(separator: " ").map { Int($0)! }
let T = TP[0]
let P = TP[1]

// 티셔츠 묶음 계산
var totalBundles = 0
for size in sizes {
    totalBundles += (size + T - 1) / T  // 올림 계산을 위해 size + T - 1을 사용
}

// 펜 계산
let maxPenBundles = N / P
let remainderPens = N % P

// 결과 출력
print(totalBundles)
print("\(maxPenBundles) \(remainderPens)")
