import Foundation

func solution(_ s:String) -> Int {
    
   var dict = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    
    var result = s
    
    for (i,num) in dict.enumerated() {
        result = result.replacingOccurrences(of: num, with: String(i))
        
    }
    
    return Int(result) ?? 0
}

///배열을 돌면서
/// 문자열이 잇는지 확인
/// 근데 영단어랑 어떻게 매핑시키지 딕셔너리에 다 담자 몇개 안되니까.
/// 그러면 s 배열을 돌면서 만약 키값에 있는 값이면 그대로 가고 밸류값에 잇는거면 키로 대체
///  다하고나서 result로 리턴
///

