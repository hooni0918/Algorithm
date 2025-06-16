func solution(_ n:Int) -> String {
    
    var text = "수박"
    
    if n % 2 == 0 {
        return String(repeating: text, count: n / 2)
    } else {
        return String(repeating: text, count: n / 2) + "수"

    }
    }
