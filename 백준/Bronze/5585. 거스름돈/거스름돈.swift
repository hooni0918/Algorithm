let coins = [500, 100, 50, 10, 5, 1]
var changes = 1000 - Int(readLine()!)!
var count = 0

coins.forEach {
    count += changes / $0
    changes %= $0
}
print(count)