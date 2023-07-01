import Foundation

func solution(_ n: Int) -> Int {
    var result = 0
    
    if n % 2 == 1 {
        for i in stride(from: 1, through: n, by: 2) {
            result += i
        }
    } else { 
        for i in stride(from: 2, through: n, by: 2) {
            result += i * i
        }
    }
    return result
}