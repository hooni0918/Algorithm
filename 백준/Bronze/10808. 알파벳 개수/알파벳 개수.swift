import Foundation

let word = readLine()!

var alphabetCount = Array(repeating: 0, count: 26)

for char in word {
    let index = Int(char.asciiValue! - Character("a").asciiValue!)
    alphabetCount[index] += 1
}

print(alphabetCount.map(String.init).joined(separator: " "))
