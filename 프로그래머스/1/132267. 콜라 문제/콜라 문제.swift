import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    
    var totalCount = 0
    var emptyCount = n
    
    while emptyCount >= a {
        
        var exchange = emptyCount / a
        
        var exchangedCount = exchange * b
        totalCount += exchangedCount
        
        emptyCount = emptyCount % a + exchangedCount
    
    }
    
    
    return totalCount
}


/// while문 돌려야됨
/// a 갯수보다 작을때까지 while문 돌아감
/// 몇개받을수 잇는지 계산
/// 몇개 받는지는 나누고 다음에 계산한 값을 다음값에 저장 -> 몇개 더받앗는지
///
