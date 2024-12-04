import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxLength = 0
    var maxWidth = 0

    for size in sizes {
        let currentLength = max(size[0],size[1])
        let currentWidth = min(size[0],size[1])

         maxLength = max(maxLength, currentLength)
         maxWidth = max(maxWidth, currentWidth)

    }
    
    return maxLength * maxWidth
}
