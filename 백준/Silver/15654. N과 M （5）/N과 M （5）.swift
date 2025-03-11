import Foundation

let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let N = firstLine[0]
let M = firstLine[1]

let numbers = readLine()!.split(separator: " ").map { Int($0)! }.sorted()


var result: [Int] = []
var backArr = Array(repeating: false, count: N)

var output = ""

func backTrace() {
    
    if result.count == M {
        output += result.map { String($0)}.joined(separator: " ") + "\n"
        return
    }
    
    for i in 0..<N {
        if !backArr[i] {
            backArr[i] = true
            result.append(numbers[i])
            backTrace()
            
            result.removeLast()
            backArr[i] = false
            
            
        }
        
        
    }
    
    
    
}

backTrace()
print(output)
