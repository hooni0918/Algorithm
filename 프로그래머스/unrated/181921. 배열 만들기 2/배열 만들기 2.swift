import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    
    var result : [Int] = []
    
    
    for num in l...r {
        if isZeroFiveNumber(num) {
            result.append(num)
        }
    }
    
    return result.isEmpty ? [-1] : result
}
     func isZeroFiveNumber(_ num: Int) -> Bool {
        let numString = String(num)
            return numString.allSatisfy { $0 == "0" || $0 == "5" }
}
    
    