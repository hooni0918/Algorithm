import Foundation

func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    var result = arr
    
    for query in queries {
        let start = query[0]
        let end = query[1]
        let k = query[2]
        
        for i in start...end {
            if i % k == 0 {
                result[i] += 1
            }
        }
    }
    
    return result
}

// let arr = [0, 1, 2, 4, 3]
// let queries = [[0, 4, 1], [0, 3, 2], [0, 3, 3]]
// let result = solution(arr, queries)
// print(result) // [3, 2, 4, 6, 4]
