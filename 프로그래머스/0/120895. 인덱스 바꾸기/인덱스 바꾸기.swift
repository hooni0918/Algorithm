

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var chars = Array(my_string)
    let temp = chars[num1]
    chars[num1] = chars[num2]
    chars[num2] = temp
    return String(chars)
}
