import Foundation

func solution(_ array: [Int], _ n: Int) -> Int {
    var closest = array[0]
    var smallestDifference = abs(array[0] - n)

    for number in array {
        let difference = abs(number - n)
        if difference < smallestDifference || (difference == smallestDifference && number < closest) {
            closest = number
            smallestDifference = difference
        }
    }

    return closest
}