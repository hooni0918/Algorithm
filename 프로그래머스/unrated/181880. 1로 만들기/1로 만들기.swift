import Foundation

func solution(_ numList: [Int]) -> Int {
    var operations = 0
    for var num in numList {
        while num != 1 {
            if num % 2 == 0 {
                num /= 2
            } else {
                num = (num - 1) / 2
            }
            operations += 1
        }
    }
    return operations
}
