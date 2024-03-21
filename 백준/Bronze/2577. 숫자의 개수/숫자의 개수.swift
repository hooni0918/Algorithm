import Foundation

guard let A = Int(readLine()!), let B = Int(readLine()!), let C = Int(readLine()!) else { fatalError("Invalid input") }

let result = A * B * C
let resultString = String(result)

var counts = Array(repeating: 0, count: 10)

for char in resultString {
    if let number = Int(String(char)) {
        counts[number] += 1
    }
}

for count in counts {
    print(count)
}
