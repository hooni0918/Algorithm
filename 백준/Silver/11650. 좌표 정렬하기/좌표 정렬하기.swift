import Foundation

let n = Int(readLine()!)!
var arr: [(Int, Int)] = []

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append((input[0],input[1]))
}

arr.sort { $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0 }

for x in 0..<n {
    print("\(arr[x].0) \(arr[x].1)")
}
