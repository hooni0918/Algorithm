import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    
    var subString = str2.contains(str1)
    
    return subString ? 1 : 0
}
