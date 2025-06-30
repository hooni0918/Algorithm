import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

let numbers = readLine()!.split(separator: " ").map { Int($0)! }

var prefixSum = [0]
for i in 0..<n {
    prefixSum.append(prefixSum[i] + numbers[i])
}

for _ in 0..<m {
    let ij = readLine()!.split(separator: " ").map { Int($0)! }
    let i = ij[0]
    let j = ij[1]
    
    let result = prefixSum[j] - prefixSum[i-1]
    print(result)
}
