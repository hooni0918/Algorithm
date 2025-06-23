import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var dict  = Set<Int>()
 
    for i in 0..<numbers.count {
        for j in (i+1)..<numbers.count {
            dict.insert(numbers[i] + numbers[j])
        }
    }
  var result =  dict.sorted()

    return result
}


///딕셔너리 하나 만들어서
///만든 딕셔너리를 기준으로 인덱스별로 돌면서 더한값 result에 appendㅇ
///만든거 소트
