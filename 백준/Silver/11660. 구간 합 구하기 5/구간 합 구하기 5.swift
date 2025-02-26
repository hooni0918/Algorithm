import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], M = input[1]

var matrix = [[Int]](repeating: [Int](repeating: 0, count: N+1), count: N+1)
var prefixSum = [[Int]](repeating: [Int](repeating: 0, count: N+1), count: N+1)

for i in 1...N {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 1...N {
        matrix[i][j] = row[j-1]
    }
}

for i in 1...N {
    for j in 1...N {
        prefixSum[i][j] = matrix[i][j] +
                          prefixSum[i-1][j] +
                          prefixSum[i][j-1] -
                          prefixSum[i-1][j-1]
    }
}

for _ in 1...M {
    let query = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = query[0], y1 = query[1], x2 = query[2], y2 = query[3]
    
    let result = prefixSum[x2][y2] -
                 prefixSum[x1-1][y2] -
                 prefixSum[x2][y1-1] +
                 prefixSum[x1-1][y1-1]
    print(result)
}
