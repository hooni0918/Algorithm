
import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: n + 1)
var visited = Array(repeating: false, count: n + 1)  

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}

func recur(_ node: Int) {
    visited[node] = true  
    
    for nxt in graph[node] {
        if !visited[nxt] {  
            recur(nxt)     
        }
    }
}

recur(1)

let infectedCount = visited.filter { $0 }.count - 1
print(infectedCount)