import Foundation

func solution(_ s:String) -> Int {
    var stack = [Int]() // 숫자를 저장할 스택
    let components = s.split(separator: " ") // 공백을 기준으로 입력을 분리

    for component in components {
        if component == "Z" {
            if !stack.isEmpty {
                _ = stack.popLast() // 가장 최근에 추가된 숫자를 스택에서 제거
            }
        } else {
            if let number = Int(component) {
                stack.append(number) // 숫자를 스택에 추가
            }
        }
    }

    return stack.reduce(0, +) // 스택에 있는 모든 숫자를 합산
}