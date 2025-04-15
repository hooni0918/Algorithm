import Foundation

guard let input = readLine(), let n = Int(input) else {
    fatalError("Invalid input")
}

if n <= 0 {
    print(0)
} else if n == 1 {
    print(1)
} else {
    var zero: UInt64 = 0
    var one: UInt64 = 1   
    
    for _ in 2...n {
        let next = zero + one
        zero = one
        one = next
    }
    
    print(one)
}
