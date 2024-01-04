import Foundation
func solution(_ letter: String) -> String {
    let morse = [
        ".-":"a", "-...":"b", "-.-.":"c", "-..":"d", ".":"e", "..-.":"f",
        "--.":"g", "....":"h", "..":"i", ".---":"j", "-.-":"k", ".-..":"l",
        "--":"m", "-.":"n", "---":"o", ".--.":"p", "--.-":"q", ".-.":"r",
        "...":"s", "-":"t", "..-":"u", "...-":"v", ".--":"w", "-..-":"x",
        "-.--":"y", "--..":"z"
    ]
    
    let letters = letter.split(separator: " ")
    var result = ""
    
    for l in letters {
        if let char = morse[String(l)] {
            result += char
        }
    }
    
    return result
}
