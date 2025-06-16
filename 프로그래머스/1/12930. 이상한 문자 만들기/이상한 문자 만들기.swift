import Foundation

func solution(_ s:String) -> String {
    
    var currentIndex = 0
    var result = ""
    
    for char in s {
        
        if char == " " {
            currentIndex = 0
            result += " "
        }
        else {
            if currentIndex % 2 == 0 {
                result += char.uppercased()
                currentIndex += 1
            } else {
                result += char.lowercased()
                currentIndex += 1
            }
        }
    }
    return result
}
///문자 돌면서 문자의 순서마다 짝수는 어퍼 홀수는 로워케이스
