import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1Index = 0
    var cards2Index = 0
    
    for goalWord in goal {
        
        if cards1Index < cards1.count && goalWord == cards1[cards1Index] {
        cards1Index += 1
        } else  if cards2Index < cards2.count && goalWord == cards2[cards2Index] {
            cards2Index += 1
        } else {
            return "No"
        }
        
    
    }
    
 return "Yes"
}
