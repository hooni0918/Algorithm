import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

var a = input[0], b = input[1], c = input[2], d = input[3], e = input[4], f = input[5]

var result : [Int] = []

for i in -999...999 {
    for j in -999...999 {
        if a*i + b*j == c && d*i + e*j == f {
            result.append(i)
            result.append(j)
            break
        }
    }
}

result.forEach { print($0, terminator: " ") }
