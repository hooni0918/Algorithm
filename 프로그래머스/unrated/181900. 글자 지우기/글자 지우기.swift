import Foundation

func solution(_ my_string: String, _ indices: [Int]) -> String {
    let chars = Array(my_string)
    var result = [Character]()
    
    for index in 0..<chars.count {
        if !indices.contains(index) {
            result.append(chars[index])
        }
    }
    
    return String(result)
}
