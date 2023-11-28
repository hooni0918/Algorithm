import Foundation


func solution(_ array: [Int]) -> Int {
    var countDict = [Int: Int]()

    array.forEach { countDict[$0, default: 0] += 1 }

    let maxCount = countDict.values.max()
    let modes = countDict.filter { $1 == maxCount }.keys

    return modes.count > 1 ? -1 : modes.first ?? -1
}
