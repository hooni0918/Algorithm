import Foundation

var input = readLine()!.split(separator: " ").map { Double($0)! }
let a = input[0]
let b = input[1]
let v = input[2]

print(Int(ceil((v - b) / (a - b))))
