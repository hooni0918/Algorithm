import Foundation

func solution(_ numList: [Int]) -> Int {
    let oddSum = numList.filter { $0 % 2 == 1 }.reduce(0) { $0 * 10 + $1 }
    let evenSum = numList.filter { $0 % 2 == 0 }.reduce(0) { $0 * 10 + $1 }
    
    
    return oddSum + evenSum
}
