import Foundation
let degree = Double(readLine()!)!
let realscore = readLine()!.split(separator: " ").map { Double(String($0))!}

let maxScore = realscore.max()!
let fakeScore = realscore.map { $0 / maxScore  * 100 }

var sum = 0.0

for i in fakeScore {
    sum += i
}

print(sum / degree)
