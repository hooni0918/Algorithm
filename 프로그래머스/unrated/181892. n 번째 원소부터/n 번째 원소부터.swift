import Foundation


func solution(_ num_list: [Int], _ n: Int) -> [Int] {
    let result = Array(num_list[n-1..<num_list.count])
    return result
}
