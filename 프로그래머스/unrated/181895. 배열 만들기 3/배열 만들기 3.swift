import Foundation

func solution(_ arr: [Int], _ intervals: [[Int]]) -> [Int] {
    let firstInterval = Array(arr[intervals[0][0]...intervals[0][1]])
    let secondInterval = Array(arr[intervals[1][0]...intervals[1][1]])
    return firstInterval + secondInterval
}

