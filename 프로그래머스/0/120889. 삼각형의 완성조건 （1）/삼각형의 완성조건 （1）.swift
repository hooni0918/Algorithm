import Foundation

func solution(_ sides:[Int]) -> Int {
    
    var sortt = sides.sorted(by: >)
    
    var a = sortt[0]
    var b = sortt[1]
    var c = sortt[2]

    if (a < b + c) {
        return 1
    } else{
        
        return 2
    }
    
    
}
