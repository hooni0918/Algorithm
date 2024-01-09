import Foundation 

func solution(_ n:Int) -> Int {    
    if n < 4 {return 0}       
    var answer = 0    
    for i in 4...n{        
        for j in 2..<i{      
            if i%j == 0 {       
                answer += 1        
                break          
            }        
        }   
    }  
    return answer
}