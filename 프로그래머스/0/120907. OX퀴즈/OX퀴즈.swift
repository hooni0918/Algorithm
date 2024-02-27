import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result = [String]()
    
    for equation in quiz {
        let components = equation.components(separatedBy: " ")
        let x = Int(components[0])!
        let operatorSymbol = components[1]
        let y = Int(components[2])!
        let z = Int(components[4])!
        
        var calculated: Int
        if operatorSymbol == "+" {
            calculated = x + y
        } else {
            calculated = x - y
        }
        
        result.append(calculated == z ? "O" : "X")
    }
    
    return result
}
