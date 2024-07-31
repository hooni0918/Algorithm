import Foundation

var s = readLine()!
let croatia = ["c=","c-","dz=","d-","lj","nj","s=","z="]

for i in croatia {
    s = s.replacingOccurrences(of: i, with: "_")
}
print(s.count)
