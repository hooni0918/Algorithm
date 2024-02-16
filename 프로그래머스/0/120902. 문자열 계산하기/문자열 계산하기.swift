func solution(_ my_string:String) -> Int {
    let components = my_string.split(separator: " ")
    var result = Int(components[0])!

    for i in stride(from: 1, to: components.count - 1, by: 2) {
        let operatorString = String(components[i])
        let number = Int(components[i + 1])!

        if operatorString == "+" {
            result += number
        } else if operatorString == "-" {
            result -= number
        }
    }
    return result
}
