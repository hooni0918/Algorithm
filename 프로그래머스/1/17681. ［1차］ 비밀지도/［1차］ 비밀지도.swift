func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    for i in 0..<n {
        let combine = arr1[i] | arr2[i]
        
        let binaryString = String(combine, radix: 2)
        let paddingString = String(repeating: "0", count: n - binaryString.count) + binaryString
        
        var mapLine = paddingString.map { $0 == "1" ? "#" : " " }.joined()
        answer.append(mapLine)
    }
    return answer
}
