func solution(_ phone_number:String) -> String {
    var ssuper = String(repeating: "*", count: phone_number.count - 4)
    var star = phone_number.suffix(4)
    
    return ssuper + star
}
