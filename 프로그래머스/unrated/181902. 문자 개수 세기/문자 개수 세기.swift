import Foundation
func solution(_ my_string: String) -> [Int] {

    var frequency: [Int] = Array(repeating: 0, count: 52)
    
    for character in my_string {
     
        if let asciiValue = character.asciiValue {
            if asciiValue >= 65 && asciiValue <= 90 { 
                frequency[Int(asciiValue) - 65] += 1
            } else if asciiValue >= 97 && asciiValue <= 122 { 
                frequency[Int(asciiValue) - 97 + 26] += 1
            }
        }
    }
    
    return frequency
}



