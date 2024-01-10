import Foundation

func solution(_ numbers:[Int]) -> Int {
 
    var maxSorted = numbers.sorted(by: >)
    return maxSorted[0] * maxSorted[1]
}
