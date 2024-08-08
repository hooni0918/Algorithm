import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    var C = Int(readLine()!)!
    
    let quarters = C / 25
    C %= 25
    let dimes = C / 10
    C %= 10
    let nickels = C / 5
    C %= 5
    let pennies = C
    
    print("\(quarters) \(dimes) \(nickels) \(pennies)")
}
