import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var gameBoard = board
    var popGmae = 0
    var basket :[Int] = []
    
    for i in moves {
        
        
        let col = i - 1
        
        var popInhyoung = 0
        
        for row in 0..<gameBoard.count{
            if gameBoard[row][col] != 0 {
                popInhyoung = gameBoard[row][col]
                gameBoard[row][col] = 0
                break
            }
            
            
        }
        
        if popInhyoung != 0 {
            basket.append(popInhyoung)
            
            if basket.count >= 2 && basket[basket.count-1] == basket[basket.count-2] {
                basket.removeLast()
                basket.removeLast()
                popGmae += 2
            }
        }
    }
    
    return popGmae
}

///0번쨰 잇는것들을 뽑아야지
///그래서 어디잇는지를 일단 찾아
///move 배열 돌면서 어디에서 뽑앗는지를 봐야지
///해당 2중배열에서 지역변수로 선언하고 해당 지역변수 2중배열에 값을 계속 초기화 시켜버려
///
///배열로 스택을 뭘 뽑을건지 선언해
///선언한 스택에 같은거 2개가 들어갈 경우에 removelasted 해버려
///
