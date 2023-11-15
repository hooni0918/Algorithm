import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    let replacedString = myString.replacingOccurrences(of: "A", with: "C")
                              .replacingOccurrences(of: "B", with: "A")
                              .replacingOccurrences(of: "C", with: "B")
    return replacedString.contains(pat) ? 1 : 0
}
