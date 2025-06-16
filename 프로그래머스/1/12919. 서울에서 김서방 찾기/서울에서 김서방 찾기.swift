func solution(_ seoul:[String]) -> String {
    
    guard let se = seoul.firstIndex(of: "Kim") else {return "" }
    
    return "김서방은 \(String(describing: se))에 있다"
}
