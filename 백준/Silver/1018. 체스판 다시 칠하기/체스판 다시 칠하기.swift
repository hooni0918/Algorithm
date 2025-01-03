// 보드에서 특정 8x8 영역의 변경 필요 개수를 계산하는 함수
func getChangeCount(board: [String], startX: Int, startY: Int) -> Int {
    // 첫 칸이 흰색(W)인 경우와 검은색(B)인 경우
    var count1 = 0 // W로 시작하는 경우
    var count2 = 0 // B로 시작하는 경우
    
    for i in 0..<8 {
        let row = Array(board[startX + i])
        for j in 0..<8 {
            let current = row[startY + j]
            
            // (i + j)가 짝수일 때 시작색과 같아야 함
            if (i + j) % 2 == 0 {
                if current != "W" {
                    count1 += 1
                }
                if current != "B" {
                    count2 += 1
                }
            } else { // (i + j)가 홀수일 때 시작색과 달라야 함
                if current != "B" {
                    count1 += 1
                }
                if current != "W" {
                    count2 += 1
                }
            }
        }
    }
    
    return min(count1, count2)
}

// 메인 솔루션
func solution() {
    // 입력 받기
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0]
    let M = input[1]
    
    // 보드 입력 받기
    var board: [String] = []
    for _ in 0..<N {
        board.append(readLine()!)
    }
    
    var minCount = Int.max
    
    // 가능한 모든 8x8 영역 검사
    for i in 0...(N-8) {
        for j in 0...(M-8) {
            let count = getChangeCount(board: board, startX: i, startY: j)
            minCount = min(minCount, count)
        }
    }
    
    print(minCount)
}

// 실행
solution()