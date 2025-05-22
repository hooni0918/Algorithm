import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    
    var count = [Int]()
    
    for i in array {
        if i > height {
            count.append(i)
        }
    }
    
    return count.count
}
