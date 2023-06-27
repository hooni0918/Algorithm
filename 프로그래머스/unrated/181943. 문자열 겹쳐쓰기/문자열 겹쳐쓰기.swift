import Foundation

func solution(_ my_string: String, _ overwrite_string: String, _ s: Int) -> String {
    var strArr = Array(my_string)
    let replaceArr = Array(overwrite_string)
    
    for i in 0..<replaceArr.count {
        strArr[s+i] = replaceArr[i]
    }
    
    return String(strArr)
}
