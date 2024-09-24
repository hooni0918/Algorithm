import Foundation

let n = Int(readLine()!)!
var a = readLine()!.split(separator: " ").map { Int($0)! }
let m = Int(readLine()!)!
let queries = readLine()!.split(separator: " ").map { Int($0)! }

// 배열 정렬
a.sort()

func binarySearch(_ a: [Int], _ target: Int) -> Int {
    var left = 0
    var right = a.count - 1
    
    while left <= right {
        let mid = (left + right) / 2
        
        if a[mid] == target {
            return 1
        } else if a[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return 0
}

var results: [Int] = []

for query in queries {
    results.append(binarySearch(a, query))
}

print(results.map { String($0) }.joined(separator: "\n"))