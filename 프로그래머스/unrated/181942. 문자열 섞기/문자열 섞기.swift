import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    
    let length = str1.count
    var result = ""

    for i in 0..<length {
     let index = str1.index(str1.startIndex, offsetBy: i)
        result.append(str1[index])
        result.append(str2[index])
    }

  return result
}