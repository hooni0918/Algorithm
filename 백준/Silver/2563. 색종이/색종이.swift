import Foundation

var count = [[Bool]](repeating: [Bool](repeating: false, count: 101), count: 101)

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var a = input[0]
    var b = input[1]
    
    for a in a..<a+10 {
        for b in b..<b+10 {
            count[a][b] = true
        }
    }
    
}

print(count.flatMap {$0} .filter {$0 == true} .count)

