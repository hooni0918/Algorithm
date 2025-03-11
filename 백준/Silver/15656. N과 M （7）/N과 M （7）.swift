import Foundation

let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let N = firstLine[0]
let M = firstLine[1]

let numbers = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var result = Array(repeating: 0, count: M)
var output = ""

func backTrace(depth: Int) {
    if depth == M {
        for i in 0..<M {
            output += "\(result[i]) "
        }
        output += "\n"
        return
    }
    
    for i in 0..<N {
        result[depth] = numbers[i]
        backTrace(depth: depth + 1)
    }
}

backTrace(depth: 0)
print(output)
