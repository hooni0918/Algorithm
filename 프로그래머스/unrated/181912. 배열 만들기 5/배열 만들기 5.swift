import Foundation

func solution(_ intStrs: [String], _ k: Int, _ s: Int, _ l: Int) -> [Int] {
    var result: [Int] = []

    for str in intStrs {
        let startIdx = str.index(str.startIndex, offsetBy: s)
        let endIdx = str.index(startIdx, offsetBy: l - 1, limitedBy: str.endIndex) ?? str.index(before: str.endIndex)
        let subStr = String(str[startIdx...endIdx])
        
        if let num = Int(subStr), num > k {
            result.append(num)
        }
    }

    return result
}
