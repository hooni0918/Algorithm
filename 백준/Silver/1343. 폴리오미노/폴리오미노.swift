import Foundation

let input = readLine()!
var result = ""

var i = 0
while i < input.count {
    let char = input[input.index(input.startIndex, offsetBy: i)]
    
    if char == "." {
        result += "."
        i += 1
    } else {
        // 연속된 X의 길이 구하기
        var xCount = 0
        var j = i
        while j < input.count {
            let nextChar = input[input.index(input.startIndex, offsetBy: j)]
            if nextChar == "X" {
                xCount += 1
                j += 1
            } else {
                break
            }
        }
        
        if xCount % 2 != 0 {
            print(-1)
            exit(0)
        }
        
        let aaaaCount = xCount / 4
        let bbCount = (xCount % 4) / 2
        
        for _ in 0..<aaaaCount {
            result += "AAAA"
        }
        for _ in 0..<bbCount {
            result += "BB"
        }
        
        i = j
    }
}

print(result)