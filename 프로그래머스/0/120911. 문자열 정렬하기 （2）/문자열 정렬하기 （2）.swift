import Foundation

func solution(_ my_string:String) -> String {
    
    var ss : String  = my_string.lowercased()
    var sss = ss.sorted()
    
    
    return String(sss)
}
