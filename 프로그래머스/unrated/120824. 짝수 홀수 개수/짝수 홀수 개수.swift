import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var evenCount = 0
    var oddCount = 0
    
    for i in num_list {
        if i % 2 == 0 {
            evenCount += 1
        } else {
            oddCount += 1
        }
    }
    
    return [evenCount, oddCount]
}
