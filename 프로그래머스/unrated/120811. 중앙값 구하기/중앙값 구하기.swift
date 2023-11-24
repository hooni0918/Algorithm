import Foundation

func solution(_ array:[Int]) -> Int {
    
    let sortedArray = array.sorted()
    let middle = array.count / 2
    
    
    
    return sortedArray[middle]
}
