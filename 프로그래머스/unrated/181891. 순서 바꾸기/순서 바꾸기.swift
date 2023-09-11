import Foundation

func solution(_ num_list: [Int], _ n: Int) -> [Int] {
    let firstPart = Array(num_list[n..<num_list.count])
    let secondPart = Array(num_list[0..<n])
    return firstPart + secondPart
}
