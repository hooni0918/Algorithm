import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
   var result = [Int]()
    
    for query in queries {
        let s = query[0]
        let e = query[1]
        let k = query[2]
        
        var candidates = [Int]()
        for i in s...e {
            if arr[i] > k {
                candidates.append(arr[i])
            }
        }
        
        if let minCandidate = candidates.min() {
            result.append(minCandidate)
        } else {
            result.append(-1)
        }
    }
    
    return result
}