import Foundation

let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let N = firstLine[0]
let M = firstLine[1]

let numbers = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var result = Array(repeating: 0, count: M)

func backTrace(depth: Int, start: Int) {
    if depth == M {
        print(result.map { String($0) }.joined(separator: " "))
        return
    }
    
    for i in start..<N {
        result[depth] = numbers[i]
        backTrace(depth: depth + 1, start: i)
    }
}

backTrace(depth: 0, start: 0)