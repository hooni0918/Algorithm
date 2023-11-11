import Foundation

func solution(_ my_string: String) -> [String] {
    return my_string.trimmingCharacters(in: .whitespaces).split(separator: " ").map { String($0) }
}
