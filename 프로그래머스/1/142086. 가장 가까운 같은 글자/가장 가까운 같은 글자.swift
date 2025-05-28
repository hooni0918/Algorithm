import Foundation

func solution(_ s:String) -> [Int] {
    
    var result = [Int]()
    var chchch = Array(s)
    
    for i in 0..<chchch.count {
        
        var found = -1
        
        for j in (0..<i).reversed() {
            
            if chchch[i] == chchch[j] {
                found = i-j
                break
            }
        }
        result.append(found)

    }
    
    
    return result
}
