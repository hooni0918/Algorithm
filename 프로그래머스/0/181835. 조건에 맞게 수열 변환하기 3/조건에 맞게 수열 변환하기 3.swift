import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    
    var result:[Int] = []
    
    if k % 2 != 0 {
        
        for i in arr {
            result.append(i * k)
        }
        
    }else if k % 2 == 0 {
        
        for j in arr {
            
            result.append(j + k)
        }
        
    }
    return result

}
