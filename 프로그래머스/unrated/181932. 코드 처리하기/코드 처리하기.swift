import Foundation

func solution(_ code: String) -> String {
    var mode = 0
    var ret = ""
    
    for (idx, char) in code.enumerated() {
        if mode == 0 {
            if char != "1" {
                if idx % 2 == 0 {
                    ret.append(char)
                }
            } else {
                mode = 1
            }
        } else {
            if char != "1" {
                if idx % 2 != 0 {
                    ret.append(char)
                }
            } else {
                mode = 0
            }
        }
    }
    if ret.isEmpty {
        return "EMPTY"
    } else {
        return ret
        
    }
}




