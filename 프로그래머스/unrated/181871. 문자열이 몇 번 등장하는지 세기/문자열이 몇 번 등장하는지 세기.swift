import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    var count = 0
    var start = myString.startIndex
    while start < myString.endIndex, let range = myString.range(of: pat, options: [], range: start..<myString.endIndex) {
        count += 1
        start = myString.index(after: range.lowerBound)
    }
    return count
}
