import Foundation

func solution(_ my_strings: [String], _ parts: [[Int]]) -> String {
    var result = ""

    for (index, str) in my_strings.enumerated() {
        let s = parts[index][0]
        let e = parts[index][1]
        
        let startIndex = str.index(str.startIndex, offsetBy: s)
        let endIndex = str.index(str.startIndex, offsetBy: e)
        
        let subString = str[startIndex...endIndex]
        result += subString
    }
    
    return result
}
