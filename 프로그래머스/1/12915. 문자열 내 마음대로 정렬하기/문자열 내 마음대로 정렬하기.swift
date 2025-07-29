import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {

    return strings.sorted {
        var sort1 = $0.index($0.startIndex, offsetBy: n)
        var sort2 = $1.index($1.startIndex, offsetBy: n)
        
        return $0[sort1] == $1[sort2] ? $0 < $1 : $0[sort1] < $1[sort2] 
    }
    
}

///문자열 돌면서 숫자에 잇는 카운트랑 비교
///해당 번째에 잇는 단어를 가져와서 비교하고 오름차순 sort
///리턴값에 다시 정렬
