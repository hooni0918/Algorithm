import Foundation

func solution(_ balls: Int, _ share: Int) -> Double {
    if balls == share {
        return 1
    }
    func shareBall(_ num: Int) -> Double {
        if num == 1 {
            return 1
        }
        return Double(num) * shareBall(num - 1)
    }
    let result = shareBall(balls) / (shareBall(balls - share) * shareBall(share))
    return round(result)
}