import Foundation

let n = Int(readLine()!)!
var arr : [Int] = []

for i in 0..<n {
    arr.append(Int(readLine()!)!)
}
arr.sort()

for k in 0..<n {
    print(arr[k])
}
