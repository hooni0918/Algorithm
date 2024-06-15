let n = Int(readLine()!)!

var point : [(Int ,Int)] = []

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    point.append((input[0], input[1]))
}

point.sort(by: {
    $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1
})

for i in 0..<n {
    print("\(point[i].0) \(point[i].1)")
}
