import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var minRow = Int.max
    var maxRow = Int.min  
    var minCol = Int.max
    var maxCol = Int.min
    
    for (row, line) in wallpaper.enumerated() {
        for (col, char) in line.enumerated() {
            if char == "#" {
                minRow = min(minRow, row)
                maxRow = max(maxRow, row)
                minCol = min(minCol, col)
                maxCol = max(maxCol, col)
            }
        }
    }
    
    return [minRow, minCol, maxRow + 1, maxCol + 1]
}