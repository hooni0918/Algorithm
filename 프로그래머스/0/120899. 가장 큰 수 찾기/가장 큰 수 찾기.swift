import Foundation

func solution(_ array:[Int]) -> [Int] {
    
    
    if let max = array.max() , let index = array.firstIndex(of: max) {
        return [max, index]
            } else {
                return []
            }
}