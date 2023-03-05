
guard let input = readLine()  else { fatalError() }
let lineArr = input.split(separator: " ")
let a = Double(lineArr[0])!
let b = Double(lineArr[1])!


if a > b {
    print(">")
} else if a < b {
    print("<")
} else {
    print("==")
}
