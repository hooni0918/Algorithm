import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var result = 0
    
    if a % 2 == 0 && b % 2 == 0 {
        result = abs(a - b)
    } else if a % 2 != 0 && b % 2 != 0  {
        result = (a*a) + (b*b)
    } else if a % 2 != 0 && b % 2 == 0 || a % 2 == 0 && b % 2 != 0{
        result = 2*(a+b)
    }
    
    return result
}
