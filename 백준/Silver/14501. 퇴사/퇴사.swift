import Foundation

let n = Int(readLine()!)!
var T: [Int] = []
var P: [Int] = []
var maxProfit = 0

for _ in 0..<n {
    var input = readLine()!.split(separator: " ").map { Int($0)!}
    T.append(input[0])
    P.append(input[1])
}

func searchMaxProfit(day: Int, profit: Int) {
    
    if day >= n {
        maxProfit = max(maxProfit, profit)
        return
    }
    
    if day + T[day] <= n {
        searchMaxProfit(day: day + T[day], profit: profit + P[day])
    }
    
    if day + 1 <= n {
        searchMaxProfit(day: day + 1, profit: profit)
    }
    
}

searchMaxProfit(day: 0, profit: 0)
print(maxProfit)
