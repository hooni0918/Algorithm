import Foundation
//
let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
var (a, b) = (n[0], n[1])

var c = a + b

print( "\(a) + \(b) = \(c)")