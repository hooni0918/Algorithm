import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
 
    var result = 0
    var lastCovered = 0
    
    for i in 0..<section.count {
     
        var currentCovered = section[i]
        
        if currentCovered > lastCovered {
            result += 1
            lastCovered = section[i] + m - 1
            
        }
        
    }
    return result
}
