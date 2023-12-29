import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return String(my_string.flatMap{ String(repeating: $0, count: n) })
}
