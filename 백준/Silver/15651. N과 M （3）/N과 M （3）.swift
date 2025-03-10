import Foundation

let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let N = firstLine[0]
let M = firstLine[1]

var result: [Int] = []
var output = ""

func backTrace() {
    
    if result.count == M {
        output += result.map { String($0)}.joined(separator: " ") + "\n"
        return
    }
    
        for i in 1...N {
            result.append(i)
            backTrace()
            result.removeLast()
            
        }
    }

backTrace()
print(output)
