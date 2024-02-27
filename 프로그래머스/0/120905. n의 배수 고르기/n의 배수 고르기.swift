import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    
    let result = numlist.filter { $0 % n == 0 }
    
    return result
}
