import Foundation

let n = Int(readLine()!)!
var num = [Int]()

for i in 0..<n {
    if let input = readLine() {
        num.append(Int(input)!)
    }
}
num.sort()

for i in num {
    print(i)
}
