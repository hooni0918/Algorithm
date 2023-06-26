import Foundation

let str = readLine()!

var result = ""

for char in str {
    if char.isLowercase {
        result += char.uppercased()
    } else {
        result += char.lowercased()
    }
}
   

print(result)