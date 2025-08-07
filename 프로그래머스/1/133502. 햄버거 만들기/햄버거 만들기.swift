import Foundation

func solution(_ ingredient:[Int]) -> Int {
    
    var stack : [Int] = []
    var result = 0
    
    for i in ingredient {
        stack.append(i)
        
        if stack.count >= 4 {
           let lastStack = Array(stack.suffix(4))
            if lastStack == [1,2,3,1] {
                stack.removeLast(4)
                result += 1
            }
        }
    }
    
    
    return result
}


///스택이고 빵 - 야채 - 고기 - 빵 순으로만 쌓여햐암
///빵 - 1 야채 - 2. 고기 - 3 즉 1231 순서가 되어야함
///ingredient 배열 돌면서 앞에서부터 1231 만들수 잇으면 결과 += 1 하고 아니면 0
///
