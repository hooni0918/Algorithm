import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    let remainder = a % b
    return remainder == 0 ? b : gcd(b, remainder)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func solution(_ n: Int) -> Int {
    return lcm(n, 6) / 6
}
