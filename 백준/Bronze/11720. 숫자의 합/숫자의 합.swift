import Foundation

let n = Int(readLine()!)!
let numbers = readLine()!
var sum = 0
for number in numbers {
    sum += Int(String(number))!
}
print(sum)
