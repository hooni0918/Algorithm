import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
 
    var miniWins = lottos.filter { win_nums.contains($0) }.count
    var maxWins = lottos.filter { $0 == 0 }.count

  let max =  getRank(miniWins + maxWins)
  let min =  getRank(miniWins)
    
    return [max,min]
}


func getRank(_ count: Int) -> Int {
    return count >= 2 ? 7 - count : 6
}

///로또  당첨 번호랑 내가 구매한거 값이 주어짐
///
///최저 일때는 0 다 빼고 로또s 배열에 잇는 값들이랑 단순 비교 -> filter
///최대일때는 0 인 값들이 전부 맞앗다고 가정
///그럼 경우의 수 나눠서 최소는 필터 최대일때는 0의 갯수만큼 결과에 더한다

