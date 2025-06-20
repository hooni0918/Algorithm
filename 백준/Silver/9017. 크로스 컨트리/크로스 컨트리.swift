import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let N = Int(readLine()!)!
    let teams = readLine()!.split(separator: " ").map { Int($0)! }
    
    // 각 팀별 선수 수 계산
    var teamCounts: [Int: Int] = [:]
    for team in teams {
        teamCounts[team, default: 0] += 1
    }
    
    // 6명이 아닌 팀 제외
    let validTeams = teamCounts.filter { $0.value == 6 }.keys
    
    // 각 팀별 점수 계산
    var teamScores: [Int: [Int]] = [:]
    var score = 1
    
    for team in teams {
        if validTeams.contains(team) {
            teamScores[team, default: []].append(score)
            score += 1
        }
    }
    
    // 각 팀의 상위 4명 점수 합계와 5번째 선수 점수 계산
    var teamResults: [(team: Int, totalScore: Int, fifthScore: Int)] = []
    
    for team in validTeams {
        let scores = teamScores[team]!.sorted()
        let totalScore = scores[0] + scores[1] + scores[2] + scores[3] // 상위 4명
        let fifthScore = scores[4] // 5번째 선수
        teamResults.append((team: team, totalScore: totalScore, fifthScore: fifthScore))
    }
    
    // 정렬: 1) 총점 낮은 순, 2) 5번째 선수 점수 낮은 순, 3) 팀 번호 낮은 순
    teamResults.sort { first, second in
        if first.totalScore != second.totalScore {
            return first.totalScore < second.totalScore
        }
        if first.fifthScore != second.fifthScore {
            return first.fifthScore < second.fifthScore
        }
        return first.team < second.team
    }
    
    print(teamResults[0].team)
}



///점수가 낮은게 유리함
///처음에 테스트 케이스 입력
///이후에 케이스 받아오기
///받아온 케이스대로 숫자 입력하기
///숫자 입력하고 나서 입력한 숫자를 딕셔너리로 담아서 가장 많이 한팀을 추출
///예외처리 배열 인덱스가 6명이 아니면 안됨
///같을경우 순서비교
