func solution(_ answers: [Int]) -> [Int] {
    let firstSu = [1, 2, 3, 4, 5]
    let secondSu = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdSu = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var scores = [0, 0, 0] // 각 수포자의 점수를 저장할 배열
    
    // 각 답안을 체크
    for (index, answer) in answers.enumerated() {
        // 첫 번째 수포자
        if answer == firstSu[index % firstSu.count] {
            scores[0] += 1
        }
        // 두 번째 수포자
        if answer == secondSu[index % secondSu.count] {
            scores[1] += 1
        }
        // 세 번째 수포자
        if answer == thirdSu[index % thirdSu.count] {
            scores[2] += 1
        }
    }
    
    // 가장 높은 점수 찾기
    let maxScore = scores.max()!
    
    // 가장 높은 점수를 받은 사람들의 번호를 배열로 반환
    return scores.enumerated()
        .filter { $0.element == maxScore }
        .map { $0.offset + 1 }
}