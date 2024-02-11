func solution(_ order: Int) -> Int {
    var clapCount = 0
    let digits = Array(String(order))
    
    for digit in digits {
        if digit == "3" || digit == "6" || digit == "9" {
            clapCount += 1
        }
    }
    
    return clapCount
}

let order1 = 3
let order2 = 29423