
guard let input = readLine()  else { fatalError() }
let lineArr = input.split(separator: " ")

let a = Int(lineArr[0])!
let b = Int(lineArr[1])!
let c = Int(lineArr[2])!
let d = Int(lineArr[3])!
let e = Int(lineArr[4])!

let result = (a*a) + (b*b) + (c*c) + (d*d) + (e*e)
let num = result % 10

print(num)