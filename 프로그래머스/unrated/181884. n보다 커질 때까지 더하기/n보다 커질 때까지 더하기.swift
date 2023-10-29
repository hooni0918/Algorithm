import Foundation

func solution(_ numbers: [Int], _ n: Int) -> Int {
    var currentSum = 0
    
    for number in numbers {
        currentSum += number 
        if currentSum > n { 
            return currentSum 
        }
    }
    
    return currentSum
}