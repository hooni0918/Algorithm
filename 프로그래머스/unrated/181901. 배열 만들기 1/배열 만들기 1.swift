import Foundation


func solution(_ n:Int, _ k:Int) -> [Int] {

    var result = [Int]()

    for i in stride(from: k, through: n, by: k){
         result.append(i)
    }
    return result
    
}

    
    
