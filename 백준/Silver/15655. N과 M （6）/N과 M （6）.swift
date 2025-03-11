import Foundation

let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let N = firstLine[0]
let M = firstLine[1]

let numbers = readLine()!.split(separator: " ").map { Int($0)! }.sorted()


var result: [Int] = []

var output = ""

func backTrace(start: Int) {
    
    if result.count == M {
        output += result.map { String($0)}.joined(separator: " ") + "\n"
        return
    }
    
    
    if start <= N {
        for i in start..<N {
            
            result.append(numbers[i])
            backTrace(start: i + 1)
            result.removeLast()
            
        }
        
    }
    
}

backTrace(start: 0)
print(output)
