import Foundation

func solution(_ binomial: String) -> Int {
    let components = binomial.components(separatedBy: " ")
    let a = Int(components[0])!
    let op = components[1]
    let b = Int(components[2])!

    switch op {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    default:
        return 0
    }
}
