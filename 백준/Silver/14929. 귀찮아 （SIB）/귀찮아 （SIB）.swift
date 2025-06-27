import Foundation

var input = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map { Int($0)! }


var prefix = 0
var result = 0

for i in 0..<input {
    result += numbers[i] * prefix
    prefix += numbers[i]
}
        
print(result)
        
        
///입력받은 수만큼 돌면서
///0 * 1 + 0 * 2 + 1 * 2 이런식으로 다 도렴ㄴ서 곱한걸 Prefix에 더한다.
