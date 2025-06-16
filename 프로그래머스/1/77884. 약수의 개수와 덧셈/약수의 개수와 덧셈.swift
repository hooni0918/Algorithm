import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    
    var result = 0

    
    for i in left...right {
        var division = 0

        for j in 1...i {
            if i % j == 0 {
                division += 1
            }
        }
        
        if division % 2 == 0 {
            result += i
        } else {
            result -= i
        }
    }
    
    
    return result
}


/// 왼쪽에서 시작해서 오른쪽까지 반복문 돌림
///  n % i 가 0인것들 result에 담기
///  만약 result.count가 짝수면 results에 다시 담기
///  홀수면 안담음
///  results의 값들 다 reduce(0.+)
