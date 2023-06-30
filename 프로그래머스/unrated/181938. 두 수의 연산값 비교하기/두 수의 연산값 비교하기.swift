import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    
    var result1 = Int("\(a)\(b)")!
    var result2 = 2 * a * b
    
    
    
    
    return max(result1, result2)
}