import Foundation

func solution(_ start:Int, _ end:Int) -> [Int] {
    var result: [Int] = []

    for char in (end...start).reversed() {
        result.append(char)
        
    }
    return result
    }
    
    
    
