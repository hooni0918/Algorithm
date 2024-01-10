import Foundation

func solution(_ my_string: String) -> [Int] {
    let digits = my_string.filter { $0.isNumber }.compactMap { Int(String($0)) }.sorted()
    return digits
}
