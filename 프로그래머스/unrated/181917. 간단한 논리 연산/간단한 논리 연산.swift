import Foundation

func solution(_ x1:Bool, _ x2:Bool, _ x3:Bool, _ x4:Bool) -> Bool {
     let result = (x1 || x2) && (x3 || x4 )
    return result
}