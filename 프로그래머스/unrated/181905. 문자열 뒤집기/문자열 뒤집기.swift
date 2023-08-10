import Foundation

func solution(_ my_string: String, _ s: Int, _ e: Int) -> String {
    var chars = Array(my_string)
    let reversedSegment = chars[s...e].reversed()
    chars.replaceSubrange(s...e, with: reversedSegment)
    return String(chars)
}