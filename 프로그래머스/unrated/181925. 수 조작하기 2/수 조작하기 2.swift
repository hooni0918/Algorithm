import Foundation

func solution(_ numLog: [Int]) -> String {
    var result = ""
    
    for i in 1..<numLog.count {
        let diff = numLog[i] - numLog[i - 1]
        
        if diff == 1 {
            result.append("w")
        } else if diff == -1 {
            result.append("s")
        } else if diff == 10 {
            result.append("d")
        } else if diff == -10 {
            result.append("a")
        }
    }
    
    return result
}
