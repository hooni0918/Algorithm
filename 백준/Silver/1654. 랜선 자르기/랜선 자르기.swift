import Foundation

// 입력 받기
let input = readLine()!.split(separator: " ").map { Int($0)! }
let K = input[0] // 이미 가지고 있는 랜선의 개수
let N = input[1] // 필요한 랜선의 개수

var cables: [Int] = []
for _ in 0..<K {
    cables.append(Int(readLine()!)!)
}

// 이분 탐색
var left = 1
var right = cables.max()!

while left <= right {
    let mid = (left + right) / 2
    var count = 0
    
    for cable in cables {
        count += cable / mid
    }
    
    if count >= N {
        left = mid + 1
    } else {
        right = mid - 1
    }
}

print(right)