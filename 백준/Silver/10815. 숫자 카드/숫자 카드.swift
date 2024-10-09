import Foundation

// 상근이의 카드 입력 받기
let N = Int(readLine()!)!
var sanggeunCards = readLine()!.split(separator: " ").map { Int($0)! }

// 확인할 숫자 입력 받기
let M = Int(readLine()!)!
let checkNumbers = readLine()!.split(separator: " ").map { Int($0)! }

// 상근이의 카드 정렬
sanggeunCards.sort()

// 이진 탐색 함수
func binarySearch(_ arr: [Int], _ target: Int) -> Bool {
    var left = 0
    var right = arr.count - 1
    
    while left <= right {
        let mid = (left + right) / 2
        if arr[mid] == target {
            return true
        } else if arr[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return false
}

// 각 숫자에 대해 이진 탐색 수행 및 결과 출력
var result: [Int] = []
for number in checkNumbers {
    result.append(binarySearch(sanggeunCards, number) ? 1 : 0)
}

print(result.map { String($0) }.joined(separator: " "))