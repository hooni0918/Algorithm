import Foundation

func solution(_ my_string: String, _ m: Int, _ c: Int) -> String {
    
    let chars = Array(my_string)
    var result = ""

    for index in stride(from: c - 1, to: chars.count, by: m) {
        result.append(chars[index])
    }

    return result
}