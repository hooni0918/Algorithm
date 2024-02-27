import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    let strNum = String(num)
    let strK = String(k)
    
    if let range = strNum.range(of: strK) {
        let position = strNum.distance(from: strNum.startIndex, to: range.lowerBound)
        return position + 1
    } else {
        return -1
    }
}
