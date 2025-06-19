import Foundation

let n = Int(readLine()!)!

var dict : [Int:Int] = [:]
var count = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")

    var cowIndex = Int(input[0])!
    var cowCross = Int(input[1])!

    if let preveus = dict[cowIndex] {
        if preveus != cowCross {
            count += 1
        }
        
    }
    dict[cowIndex] = cowCross

}

print(count)


///일단 값 다 받아와서
///처음 배열에 담긴 값이랑 배열 전체를 확인하면서 두번째 value가 바꼇는지 여부 체크
///value의 값이 바꼇으면 카운트값 하나씩 더하기
///최종 카운트 리턴
