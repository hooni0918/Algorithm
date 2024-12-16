import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let k = input[1]

var scores = readLine()!.split(separator: " ").map { Int(String($0))! }

scores.sort(by: >)

print(scores[k-1])
