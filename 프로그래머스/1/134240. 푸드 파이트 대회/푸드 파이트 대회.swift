import Foundation

func solution(_ food:[Int]) -> String {
    
    var result = [Int]()
    
    for i in 1..<food.count {
        if food[i] % 2 != 0 {
            result.append(food[i] - 1)
        } else {
            result.append(food[i])
        }
        
    }
        
        var leftSide = ""
    for j in 0..<result.count {
        let count = result[j]/2
        let foodNum = j + 1
        
        leftSide += String(repeating: String(foodNum), count: count)
        
    }
        
    
    return leftSide + "0" + String(leftSide.reversed())
}
