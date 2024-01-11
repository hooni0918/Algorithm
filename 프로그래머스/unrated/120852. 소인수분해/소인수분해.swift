import Foundation

func solution(_ n: Int) -> [Int] {
    var num = n
    var factor = 2
    var factors: [Int] = []
    
    while num > 1 {
        if num % factor == 0 {
            if !factors.contains(factor) {
                factors.append(factor)
            }
            num /= factor
        } else {
            factor += 1
        }
    }
    
    return factors
}
