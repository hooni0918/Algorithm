import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }

var N = nm[0]
var M = nm[1]

var dict : [String:Int] = [:]
var result = [String]()

for _ in 0..<N {
    var input = readLine()!
    
    if input.count >= M {
        dict[input,default: 0] += 1
    }
}

let sortedWords = dict.sorted {
    if $0.value == $1.value {
        if $0.key.count == $1.key.count {
            return $0.key < $1.key
        }
        return $0.key.count > $1.key.count
    }
    return $0.value > $1.value
}
sortedWords.forEach { print($0.key) }

///N만큼 단어 입력받기
///이제 0부터 N까지 포문돌면서 전체 값 보기
///값을 보면서 딕셔너리 배열 선언해두고 딕셔너리 배열에 잇으면 값 하나 더 추가
///4개 넘고 값 정렬해서 result 리턴
