import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    
    var count = 0
    var totalCount = 0
    let SortedD = d.sorted()
    
    for i in SortedD {
        if i + totalCount <= budget {
            totalCount += i
            count += 1
        } else {
            break
        }
    }
    
    
    return count
}
