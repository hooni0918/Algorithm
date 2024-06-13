import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }

let m = Int(readLine()!)!

let count = input.filter { $0 == m }.count
print(count)
