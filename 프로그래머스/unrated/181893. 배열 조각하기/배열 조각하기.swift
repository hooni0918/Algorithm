import Foundation


func solution(_ arr: [Int], _ query: [Int]) -> [Int] {
    var result = arr
    
    for i in 0..<query.count {
        let index = query[i]
        
        if i % 2 == 0 {
            if index < result.count {
                result.removeSubrange(index+1..<result.count)
            }
        } else {
            if index < result.count {
                result.removeSubrange(0..<index)
            }
        }
    }
    
    return result
}
