import Foundation

let n = Int(readLine()!)!
var result : [Int] = []

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return (a * b) / gcd(a, b)
}

for _ in 0..<n {
    var input = readLine()!.split(separator: " ")

    var a = Int(input[0])!
    var b = Int(input[1])!
    
    result.append(lcm(a, b))
}

for i in result {
    print(i)
}
