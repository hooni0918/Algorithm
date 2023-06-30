import Foundation

func solution(_ a: Int, _ b: Int) -> Int {
    let result1 = Int("\(a)\(b)")!
    let result2 = Int("\(b)\(a)")!
    
    return max(result1, result2)
}
