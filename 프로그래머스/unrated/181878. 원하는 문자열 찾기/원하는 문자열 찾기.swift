import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    let lowerMyString = myString.lowercased()
    let lowerPat = pat.lowercased()
    
    if lowerMyString.contains(lowerPat) {
        return 1
    } else {
        return 0
    }
}
