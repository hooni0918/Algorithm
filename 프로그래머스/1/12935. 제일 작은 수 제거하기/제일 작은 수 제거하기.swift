func solution(_ arr:[Int]) -> [Int] {
        
        if arr.count == 1 {
            return [-1]
        }
   
    var minArr = arr.min()!
    var result = arr.filter { $0 != minArr }
    
    return result
}
