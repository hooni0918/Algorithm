import Foundation
func solution(_ my_string: String) -> String {
    var result = ""
    
    for char in my_string {
        if char.isLowercase {
            result.append(char.uppercased())
        } else {
            result.append(char.lowercased())
        }
    }
    
    return result
}
