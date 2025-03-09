import Foundation

let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let N = firstLine[0]
let M = firstLine[1]

var result: [Int] = []

func backTracking(start: Int) {
    if result.count == M {
        print(result.map { String($0) }.joined(separator: " "))
        return
    }
    
    if start <= N {
        
    for i in start...N {
        result.append(i)
        backTracking(start: i + 1)
        result.removeLast()
    }
        
    }
}

backTracking(start: 1)
