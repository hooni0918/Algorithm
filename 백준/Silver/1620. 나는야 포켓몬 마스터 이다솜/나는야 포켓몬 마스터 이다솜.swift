import Foundation

var cards = readLine()!.split(separator: " ").map { Int($0)! }
let poka = cards[0]
let dictionary = cards[1]

var numtoStr : [String:Int] = [:]
var StrtoNum : [Int:String] = [:]

for i in 0..<poka {
    var input = readLine()!
    
    numtoStr[input] = i + 1
    StrtoNum[i+1] = input
}

for i in 0..<dictionary {
    var query = readLine()!
    
    if let num = Int(query) {
        print(StrtoNum[num]!)
    } else {
        print(numtoStr[query]!)
    }
    
}


///딕셔너리 배열 돌면서 인덱스랑 입력된값들이랑 비교하기
///만약 두번째 인풋[1] 부분이 주어지면 인풋 0 뭐 이런식으로 배출
///어팬드로 이름을 넣어야겟지?
