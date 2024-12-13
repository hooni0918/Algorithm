import Foundation

var n = [Int]()

for i in 0..<5 {
    n.append(Int(readLine()!)!)
}

print(n.reduce(0, +)/5)
print(n.sorted(by: <)[2])
