import Foundation

let input = Int(readLine()!)!
var price : [Int] = []


for _ in 0..<input {
    price.append(Int(readLine()!)!)
}

var totalCount = 0
price.sort(by: >)

for i in stride(from: 0, to: input, by: 3) {
    if i + 2 < input {
        totalCount += price[i] + price[i+1]
    } else if i + 1 < input {
        totalCount += price[i] + price[i+1]

    } else {
        totalCount += price[i]
    }
    
}
print(totalCount)
///3개를 사면 그중에 제일싼거 그냥 줌
///3개단위로 묶고 아닌건 따로 빼기
///3개단위에서 정렬해서 마지막꺼 빼기
///
