import Foundation

func solution(_ n:Int) -> Int {
    let strN = String(n)
    var sum = 0
    for char in strN {
        if let num = Int(String(char)) {
            sum += num
        }
    }
    return sum
}
