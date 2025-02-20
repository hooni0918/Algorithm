import Foundation

let N = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map { Int($0)! }

var prefix = Array(repeating: 0, count: N)
prefix[0] = numbers[0]
var maxSum = prefix[0]

for i in 1..<N {
    prefix[i] = max(prefix[i-1] + numbers[i], numbers[i])
    maxSum = max(maxSum,prefix[i])
}

print(maxSum)

