import Foundation

func solution(_ a: Int, _ d: Int, _ included: [Bool]) -> Int {
    var result = 0
    
    for (index, isIncluded) in included.enumerated() {
        if isIncluded {
            let term = a + (index * d)
            result += term
        }
    }
    
    return result
}