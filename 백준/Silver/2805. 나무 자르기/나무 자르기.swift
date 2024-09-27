import Foundation

var a = readLine()!.split(separator: " ").map { Int($0)! }
var trees = readLine()!.split(separator: " ").map { Int($0)! }

trees.sort()

var N = a[0]
var M = a[1]

var left = 0
var right = trees.last! - 1

while left <= right {
    var mid = (left + right) / 2
    var sum = 0

    for tree in trees {
        if tree > mid {
            sum += tree - mid
        }
    }

    if sum >= M {
        left = mid + 1
    } else {
        right = mid - 1
    }
}

print( right )
