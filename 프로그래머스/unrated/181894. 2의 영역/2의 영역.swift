import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var startIndex = -1
    var endIndex = -1
    
    // 배열에서 2를 포함한 첫 번째 인덱스와 마지막 인덱스를 찾습니다.
    for i in 0..<arr.count {
        if arr[i] == 2 {
            if startIndex == -1 {
                startIndex = i
            }
            endIndex = i
        }
    }
    
    guard startIndex != -1 && endIndex != -1 else {
        return [-1]
    }
    
    // startIndex부터 endIndex까지의 부분 배열을 반환합니다.
    return Array(arr[startIndex...endIndex])
}
