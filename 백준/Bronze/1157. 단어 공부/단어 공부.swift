let word = readLine()!.uppercased()

var charCount = [Character: Int]()

for i in word {
    charCount[i, default: 0] += 1
}

var maxValue = charCount.values.max()
var maxChars = charCount.filter { $0.value == maxValue! }

if maxChars.count > 1 {
    print("?") }
else {
    print(maxChars.keys.first!)
}

