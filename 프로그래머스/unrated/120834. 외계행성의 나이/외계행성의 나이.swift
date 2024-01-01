import Foundation

func solution(_ age: Int) -> String {
    let alphabet = "abcdefghij"
    let digits = String(age).compactMap { Int(String($0)) }
    let result = digits.map { alphabet[$0] }
    return String(result)
}

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
