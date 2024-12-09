import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    var result = arr
    let isOddLength = arr.count % 2 == 1
    
    for i in 0..<arr.count {
        if (isOddLength && i % 2 == 0) || (!isOddLength && i % 2 == 1) {
            result[i] += n
        }
    }
    
    return result
}
