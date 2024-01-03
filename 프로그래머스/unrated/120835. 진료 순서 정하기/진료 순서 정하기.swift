import Foundation

func solution(_ emergency:[Int]) -> [Int] {
 
    var sorted = emergency.sorted(by: >)
    var result: [Int] = []
    
    for i in emergency {
        if let index = sorted.firstIndex(of: i){
            result.append(index + 1)
        }
    }
        return result
    }
    


