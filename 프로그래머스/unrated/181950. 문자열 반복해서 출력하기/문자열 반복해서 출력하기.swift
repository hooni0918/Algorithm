import Foundation

let input = readLine()!.components(separatedBy: " ")
let str = input[0]
let n = Int(input[1])!

let repeatedString = String(repeating: str, count: n)
print(repeatedString)
