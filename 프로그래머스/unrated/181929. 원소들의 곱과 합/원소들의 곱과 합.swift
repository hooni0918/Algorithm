import Foundation
func solution(_ numList: [Int]) -> Int {
    var product = 1
    var sum = 0
    
    for num in numList {
        product *= num
        sum += num
    }
    
    
    if product < sum * sum {
        return 1
    } else {
        return 0
    }
}
