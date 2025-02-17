import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = Int(readLine()!)!
    var hasSmallFactor = false
    
    for i in 2...1000000 {
        if input % i == 0 {
            hasSmallFactor = true
            break
        }
    }
    
    if hasSmallFactor {
        print("NO")
    } else {
        print("YES")
    }
}