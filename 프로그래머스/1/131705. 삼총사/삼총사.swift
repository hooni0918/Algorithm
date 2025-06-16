import Foundation

func solution(_ number:[Int]) -> Int {
    
    var result = 0
    var n = number.count
    
    for i in 0...n-3 {
        for j in i+1...n-2 {
            for k in j+1...n-1 {
                if number[i] + number[j] + number[k] == 0 {
                    result += 1
                }
            }
        }
    }
    return result
}
