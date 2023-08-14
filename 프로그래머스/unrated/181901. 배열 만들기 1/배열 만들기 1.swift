import Foundation


func solution(_ n:Int, _ k:Int) -> [Int] {
    var answer = [Int]()
    for i in stride(from: k, through: n, by: k) { // k부터 n까지 k씩 증가
        answer.append(i)
    }
    return answer
}
