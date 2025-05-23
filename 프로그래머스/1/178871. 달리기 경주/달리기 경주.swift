import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
 
    var playerIndexMap = [String: Int]()
    var result = players

    
    for (index, player) in result.enumerated() {
        playerIndexMap[player] = index
    }
    
    for i in callings {
        if let currentIndex = playerIndexMap[i] {
            
            if currentIndex > 0 {
                let frontPlayer = result[currentIndex - 1]
                
                result[currentIndex - 1] = i
                result[currentIndex] = frontPlayer
                
                playerIndexMap[i] = currentIndex - 1
                playerIndexMap[frontPlayer] = currentIndex
                
            }
        }
    }
    
    return result
}
