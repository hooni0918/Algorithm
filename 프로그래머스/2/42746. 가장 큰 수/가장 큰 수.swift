import Foundation

func solution(_ numbers:[Int]) -> String {
    
    var sortedNumbers = numbers.map{ String($0)  }
    
    sortedNumbers.sort(by: {
        return $0+$1 > $1+$0
    })
    
    
    return sortedNumbers[0] == "0" ? "0" : sortedNumbers.joined()
}
