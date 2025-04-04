import Foundation

let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let n = firstLine[0]
let k = firstLine[1]

var weights = [Int]()
var values = [Int]()

for _ in 0..<n {
    let itemInfo = readLine()!.split(separator: " ").map { Int($0)! }
    weights.append(itemInfo[0])
    values.append(itemInfo[1])
}

var dp = Array(repeating: Array(repeating: -1, count: k + 1), count: n)

func knapsack(index: Int, remainingWeight: Int) -> Int {
    if index == n || remainingWeight == 0 {
        return 0
    }
    
    if dp[index][remainingWeight] != -1 {
        return dp[index][remainingWeight]
    }
    
    if weights[index] > remainingWeight {
        dp[index][remainingWeight] = knapsack(index: index + 1, remainingWeight: remainingWeight)
        return dp[index][remainingWeight]
    }
    
    let includeItem = values[index] + knapsack(index: index + 1, remainingWeight: remainingWeight - weights[index])
    let excludeItem = knapsack(index: index + 1, remainingWeight: remainingWeight)
    
    dp[index][remainingWeight] = max(includeItem, excludeItem)
    return dp[index][remainingWeight]
}

print(knapsack(index: 0, remainingWeight: k))
