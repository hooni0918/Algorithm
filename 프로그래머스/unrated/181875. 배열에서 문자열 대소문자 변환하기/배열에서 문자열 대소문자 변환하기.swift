import Foundation

func solution(_ strArr:[String]) -> [String] {
    
    var result = strArr
    
    for i in 0..<strArr.count {
        if i % 2 == 0 {
            result[i] = strArr[i].lowercased()
        } else{
            result[i] = strArr[i].uppercased()

        }
            
    }
    
    return result
}
