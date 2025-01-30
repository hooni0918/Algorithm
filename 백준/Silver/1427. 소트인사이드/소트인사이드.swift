import Foundation

var n = readLine()!
var digits = n.map { String($0) }.sorted(by: >).joined()
print(digits)



