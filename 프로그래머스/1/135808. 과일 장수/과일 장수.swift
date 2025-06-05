import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    
    var scored = score.sorted(by: >)
    var result = 0
    
    
    ///scored 배열을 돌면서 m개 갯수만큼 쪼개서 담기
    for i in stride(from: 0, to: scored.count, by: m) {
           if i + m <= scored.count {
        
        let minCount = scored[i + m - 1]
        result += minCount * m
    }
            
    }
    
    
    return result
}

/// 내림차순 정렬을 해서
/// 앞에서 부터 끊어서 배열을 만들고 남은것들이 없으면 버림
/// 최저 사과 * 한상자 사과개수 * 상자개수
///
