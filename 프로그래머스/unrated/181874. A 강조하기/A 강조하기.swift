import Foundation

func solution(_ myString: String) -> String {
    let result = myString.map { char -> String in
        if char == "a" || char == "A" {
            return "A"
        } else if char.isUppercase {
            return String(char).lowercased()
        } else {
            return String(char)
        }
    }
    return result.joined()
}
