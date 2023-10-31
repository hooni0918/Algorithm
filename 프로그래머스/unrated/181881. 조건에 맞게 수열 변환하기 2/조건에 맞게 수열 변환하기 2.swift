import Foundation

func solution(_ arr: [Int]) -> Int {
    var seenStates = Set<[Int]>()
    var currentArr = arr
    var x = 0

    while !seenStates.contains(currentArr) {
        seenStates.insert(currentArr)
        currentArr = currentArr.map {
            if $0 >= 50 && $0 % 2 == 0 {
                return $0 / 2
            } else if $0 < 50 && $0 % 2 != 0 {
                return $0 * 2 + 1
            } else {
                return $0
            }
        }
        x += 1
    }
    
    return x - 1 
}