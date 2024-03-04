import Foundation

let T = Int(readLine()!)!
for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let H = input[0]
    let W = input[1]
    let N = input[2]
    let floor = N % H != 0 ? N % H : H
    let room = (N - 1) / H + 1
    print("\(floor)\(room < 10 ? "0\(room)" : "\(room)")")
}
