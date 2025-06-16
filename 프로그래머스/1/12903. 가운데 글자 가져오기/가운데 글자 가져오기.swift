func solution(_ s:String) -> String {
    var startIndex = s.startIndex
    var count = s.count
    
    if count % 2 != 0 {
        var middleIndex = s.index(startIndex, offsetBy: count / 2)
        return String(s[middleIndex])
    } else {
        var firstIndex = s.index(startIndex, offsetBy: count / 2 - 1)
        var secondIndex = s.index(startIndex, offsetBy: count / 2)
        return String(s[firstIndex...secondIndex])

    }
}
