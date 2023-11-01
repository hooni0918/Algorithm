import Foundation

func solution(_ numList: [Int]) -> Int {
    if numList.count >= 11 {
        return numList.reduce(0, +)
    } else {
        return numList.reduce(1, *)
    }
}
