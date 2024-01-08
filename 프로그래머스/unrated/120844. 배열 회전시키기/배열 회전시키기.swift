import Foundation

func solution(_ numbers: [Int], _ direction: String) -> [Int] {
    var result = numbers
    if direction == "right" {
        let last = result.removeLast()
        result.insert(last, at: 0)
    } else if direction == "left" {
        let first = result.removeFirst()
        result.append(first)
    }
    return result
}
