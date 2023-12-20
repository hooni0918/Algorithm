import Foundation

func solution(_ money: Int) -> [Int] {
    let coffeePrice = 5500
    let coffeeCount = money / coffeePrice
    let remainingMoney = money % coffeePrice
    
    return [coffeeCount, remainingMoney]
}
