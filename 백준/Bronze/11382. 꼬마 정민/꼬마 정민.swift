import Foundation

var n = readLine()!.split(separator: " ").map { Int($0)!}

print(n.reduce(0, +))
