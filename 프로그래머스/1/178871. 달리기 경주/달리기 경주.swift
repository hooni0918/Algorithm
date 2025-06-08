//10816

import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    
    var horse : [String : Int] = [:]
    var result = players
    
    for (i, player) in result.enumerated() {
        horse[player] = i
    }
    
    for j in callings {

        if let currentIndex = horse[j] {
            
            if currentIndex > 0 {
                let frontPlayer = result[currentIndex - 1]
                
                result[currentIndex - 1] = j
                result[currentIndex] = frontPlayer
                
                horse[j] = currentIndex - 1
                horse[frontPlayer] = currentIndex
            }
            
            
        }
    
            
            
        }
    
    return result
    }
    
///player 배열을 돌면서 콜링이 불리면
///플레이어배열내의 순서를 바꿔준다
///그리고 결과배열에 리턴추가
