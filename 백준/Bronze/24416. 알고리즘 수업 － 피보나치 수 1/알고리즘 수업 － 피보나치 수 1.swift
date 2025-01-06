import Foundation

func fibCount(_ n: Int) -> Int {
    if n <= 2 { return 1 }
    return fibCount(n-1) + fibCount(n-2)
}
func dpCount(_ n: Int) -> Int {
    return n - 2
}

if let n = Int(readLine() ?? "") {
    print("\(fibCount(n)) \(dpCount(n))")
}
