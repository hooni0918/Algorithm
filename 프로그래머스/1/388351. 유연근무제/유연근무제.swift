import Foundation

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    
    var successEmployee = 0
    let n = schedules.count
    
    for i in 0..<n {
        let desired = schedules[i]
        let allowTime = addMinutes(to: desired, minutes: 10)
        var isValid = true
        
        for day in 0..<7 {  
            let currentDay = (startday - 1 + day) % 7 + 1
            
            if currentDay >= 1 && currentDay <= 5 {  
                let actualTime = timelogs[i][day]
                
                if actualTime > allowTime {
                    isValid = false
                    break 
                }
            }
        }
        
        if isValid {  
            successEmployee += 1
        }
    }
    
    return successEmployee
}

func addMinutes(to time: Int, minutes: Int) -> Int {
    let hour = time / 100
    let minute = time % 100
    
    let totalMinutes = hour * 60 + minute + minutes
    let newHour = totalMinutes / 60
    let newMinute = totalMinutes % 60
    
    return newHour * 100 + newMinute
}