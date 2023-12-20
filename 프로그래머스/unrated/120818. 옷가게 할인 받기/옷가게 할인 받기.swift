import Foundation

func solution(_ price: Int) -> Int {
    var discountRate: Double = 0

    if price >= 500000 {
        discountRate = 0.20
    } else if price >= 300000 {
        discountRate = 0.10
    } else if price >= 100000 {
        discountRate = 0.05
    }
    
    let discountedPrice: Int = Int(Double(price) * (1.0 - discountRate))

    return discountedPrice
}
