import Foundation

func solution(_ s: String) -> Int {
    var count = 0
    var xChar: Character? = nil
    var xCount = 0
    var notXCount = 0

    for ch in s {
        if xChar == nil {
            xChar = ch
        }

        if ch == xChar {
            xCount += 1
        } else {
            notXCount += 1
        }

        if xCount == notXCount {
            count += 1
            xChar = nil
            xCount = 0
            notXCount = 0
        }
    }

    if xCount != 0 || notXCount != 0 {
        count += 1
    }

    return count
}


///s배열 돌면서 처음에 나온 값이랑 contains 된게 잇는지 확인
///만약에 포함된거잇으면 딕셔너리로 선언해서 그 값에 맞춰 더하기
///만약에 다 돌앗는데 숫자가 똑같으면 분리
