let input = readLine()!.split(separator: " ").map { Int($0)! }
let sortedNumbers = input.sorted()
print(sortedNumbers[1])
