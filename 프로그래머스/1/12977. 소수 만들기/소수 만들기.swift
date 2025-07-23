import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    
    let maxSum = 3000
    var isPrimeTable = Array(repeating: true, count: maxSum + 1)
    isPrimeTable[0] = false
    isPrimeTable[1] = false
    
    for i in 2...Int(sqrt(Double(maxSum))) {
        if isPrimeTable[i] {
            for j in stride(from: i * i, through: maxSum, by: i) {
                isPrimeTable[j] = false
            }
        }
    }
    
    for i in 0..<nums.count {
        for j in (i+1)..<nums.count {
            for k in (j+1)..<nums.count {
                let sum = nums[i] + nums[j] + nums[k]
                if isPrimeTable[sum] {
                    answer += 1
                }
            }
        }
    }
    
    return answer
}

