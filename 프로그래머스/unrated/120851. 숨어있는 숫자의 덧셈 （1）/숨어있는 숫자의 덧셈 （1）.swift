import Foundation

func solution(_ my_string: String) -> Int {
    let sum = my_string.filter { $0.isNumber }.compactMap { Int(String($0)) }.reduce(0, +)
    return sum
}
