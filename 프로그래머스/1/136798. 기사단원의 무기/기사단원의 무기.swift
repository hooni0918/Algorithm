import Foundation

func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    
    func countDivisors(_ n: Int) -> Int {
        var count = 0
        let sqrtN = Int(sqrt(Double(n)))
        
        for i in 1...sqrtN {
            if n % i == 0 {
                count += 1
                if i != n / i {
                    count += 1
                }
            }
        }
        
        return count
    }
    
    var totalWeight = 0
    
    for knightNumber in 1...number {
        let divisorCount = countDivisors(knightNumber)
        
        let actualPower: Int
        if divisorCount > limit {
            actualPower = power
        } else {
            actualPower = divisorCount }
        
        totalWeight += actualPower
    }
    
    return totalWeight
}
