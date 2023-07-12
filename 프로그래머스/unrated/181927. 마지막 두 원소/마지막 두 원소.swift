import Foundation
func solution(_ num_list: [Int]) -> [Int] {
    var result = num_list
    
    if let last = num_list.last, let secondLast = num_list.dropLast().last {
        if last > secondLast {
            result.append(last - secondLast)
        } else {
            result.append(last * 2)
        }
    }
    
    return result
}
