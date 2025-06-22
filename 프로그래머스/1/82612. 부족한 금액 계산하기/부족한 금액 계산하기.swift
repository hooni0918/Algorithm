import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var result: Int64 = 0
    
    for i in 0..<count + 1 {
        result += Int64(price * i)
    }
    
    let short = result - Int64(money)
    return short > 0 ? short : 0
}



///놀이기구를 타면 탈수록 비싸짐
///count 번 타면 n번째에는 price * count  만큼 비싸짐
///결과 리턴은 count 하고 낫을떄 내 머니에서 얼마가 부족한지 찾는것.
///
///
