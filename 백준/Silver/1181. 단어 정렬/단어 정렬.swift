
let n = Int(readLine()!)!

var word : [String] = []

for i in 0..<n {
    word.append(readLine()!)
}

word = Array(Set(word))

word.sort {
    $0.count == $1.count ? $0 < $1 : $0.count < $1.count
}

word.forEach{ print($0)}
