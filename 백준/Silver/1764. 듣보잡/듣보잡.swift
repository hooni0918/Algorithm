import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

var unheard = Set<String>()
for _ in 0..<n {
    unheard.insert(readLine()!)
}

var result = [String]()
for _ in 0..<m {
    let name = readLine()!
    if unheard.contains(name) {
        result.append(name)
    }
}

result.sort()

print(result.count)
for name in result {
    print(name)
}