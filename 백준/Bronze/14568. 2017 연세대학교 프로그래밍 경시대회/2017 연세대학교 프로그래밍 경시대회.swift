import Foundation

let n = Int(readLine()!)!

var count = 0

for A in 1...n {
    if A % 2 == 1 {
        continue
    }
    
    for B in 1...n {
        for C in 1...n {
            
            if A + B + C == n &&
                C >= B + 2 &&
                A > 0 && B > 0 && C > 0 {
                count += 1
            }
        }
    }
}

print(count)
