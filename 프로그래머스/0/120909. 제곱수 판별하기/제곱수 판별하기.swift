import Foundation

    func solution(_ n:Int) -> Int {
    let sqrtValue = Int(sqrt(Double(n)))
    if sqrtValue * sqrtValue == n {
        return 1
    } else {
        return 2
    }
}
