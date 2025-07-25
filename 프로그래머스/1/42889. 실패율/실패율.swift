
import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    var stageCount = Array(repeating: 0, count: N + 2)  
    for stage in stages {
        stageCount[stage] += 1
    }
    
    var result: [(stage: Int, rate: Double)] = []
    var totalUsers = stages.count  
    
    for i in 1...N {
        let stopUser = stageCount[i]        
        let reachUser = totalUsers         
        
        let failRate = reachUser == 0 ? 0.0 : Double(stopUser) / Double(reachUser)
        result.append((stage: i, rate: failRate))
        
        totalUsers -= stopUser
    }
    
    result.sort { first, second in
        if first.rate == second.rate {
            return first.stage < second.stage
        }
        return first.rate > second.rate
    }
    
    return result.map { $0.stage }
}