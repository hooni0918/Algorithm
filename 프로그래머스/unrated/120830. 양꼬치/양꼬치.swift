import Foundation

func solution(_ n: Int, _ k: Int) -> Int {
    let skewerPrice = 12000
    let drinkPrice = 2000
    let freeDrinks = n / 10
    let paidDrinks = k - freeDrinks
    return n * skewerPrice + max(0, paidDrinks) * drinkPrice
}
