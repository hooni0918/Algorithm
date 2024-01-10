import Foundation

func solution(_ my_string:String) -> String {
    
    var alpha : Set<Character> = [ "a", "e", "i", "o", "u"]
    var result = my_string.filter { !alpha.contains($0)}
    
    return result
}
