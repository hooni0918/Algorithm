import Foundation

let coefficients = readLine()!.split(separator: " ").map { Int($0)! }
let c = Int(readLine()!)!
let n0 = Int(readLine()!)!

let a1 = coefficients[0]
let a0 = coefficients[1]

func checkBigO() -> Int {
    for n in n0...100 {
        let f_n = a1 * n + a0
        let g_n = c * n
        
        if f_n > g_n {
            return 0
        }
    }
    return 1
}

print(checkBigO())
