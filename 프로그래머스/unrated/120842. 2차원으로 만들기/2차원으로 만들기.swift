func solution(_ num_list: [Int], _ n: Int) -> [[Int]] {
    var result = [[Int]]()
    let count = num_list.count / n
    for i in 0..<count {
        let start = i * n
        let end = start + n
        let subArray = Array(num_list[start..<end])
        result.append(subArray)
    }
    return result
}
