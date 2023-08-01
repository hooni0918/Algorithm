import Foundation

func solution(_ number: String) -> Int {
    var sum = 0
    
    for digitChar in number {
        if let digit = Int(String(digitChar)) {
            sum += digit
            sum %= 9
        }
    }
    return sum
}