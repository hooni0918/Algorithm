import Foundation


let initialCash = Int(readLine()!)!
let prices = readLine()!.split(separator: " ").map { Int($0)! }

// 준현이
var junhyeonCash = initialCash
var junhyeonStocks = 0

for price in prices {
    let buyableStocks = junhyeonCash / price
    junhyeonStocks += buyableStocks
    junhyeonCash -= buyableStocks * price
}

let junhyeonAsset = junhyeonCash + junhyeonStocks * prices.last!

// 성민이
var seongminCash = initialCash
var seongminStocks = 0

for i in 3..<prices.count {
    let today = prices[i]
    let yesterday = prices[i-1]
    let twoDaysAgo = prices[i-2]
    let threeDaysAgo = prices[i-3]
    
    if threeDaysAgo < twoDaysAgo && twoDaysAgo < yesterday && yesterday < today {
        seongminCash += seongminStocks * today
        seongminStocks = 0
    }
    else if threeDaysAgo > twoDaysAgo && twoDaysAgo > yesterday && yesterday > today {
        let buyableStocks = seongminCash / today
        seongminStocks += buyableStocks
        seongminCash -= buyableStocks * today
    }
}

let seongminAsset = seongminCash + seongminStocks * prices.last!

if junhyeonAsset > seongminAsset {
    print("BNP")
} else if seongminAsset > junhyeonAsset {
    print("TIMING")
} else {
    print("SAMESAME")
}




//준현이 (BNP 전략):
//
//매일 살 수 있는 주식을 최대한 매수
//한 번 사면 절대 팔지 않음
//
//성민이 (33 매매법):
//
//3일 연속 상승 → 다음날 전량 매도
//3일 연속 하락 → 즉시 전량 매수
//전량 거래만 함
///
