
guard let input = readLine()  else { fatalError() }
let lineArr = input.split {$0 == " " }.map(String.init)
let a = Double(lineArr[0])!
let b = Double(lineArr[1])!

print(a / b)
