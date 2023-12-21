import Foundation

if let input = readLine(), let n = Int(input) {
    drawing(n)
}

func drawing(_ n: Int) {
    for i in 1...n {
        print(String(repeating: "*", count: i))
    }
}
