import Foundation

func solution(_ myString: String, _ pat: String) -> String {
    if let range = myString.range(of: pat, options: .backwards) {
        let endIndex = myString.index(range.upperBound, offsetBy: -1)
        return String(myString[...endIndex])
    }
    return ""
}
