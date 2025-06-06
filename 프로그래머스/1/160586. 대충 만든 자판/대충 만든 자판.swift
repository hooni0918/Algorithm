import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
   // 1. 각 문자의 최소 누름 횟수를 저장할 딕셔너리
   var minPresses: [Character: Int] = [:]
   
   // 2. keymap을 순회하면서 각 문자의 최소 누름 횟수 계산
   for keyString in keymap {
       for (index, char) in keyString.enumerated() {
           let presses = index + 1  // 누름 횟수 (인덱스 + 1)
           
           // 이미 저장된 값과 비교해서 더 작은 값으로 업데이트
           if let existing = minPresses[char] {
               minPresses[char] = min(existing, presses)
           } else {
               minPresses[char] = presses
           }
       }
   }
   
   // 3. 각 target 문자열에 대해 계산
   var result: [Int] = []
   
   for target in targets {
       var totalPresses = 0
       var canMake = true
       
       // target의 각 문자에 대해
       for char in target {
           if let presses = minPresses[char] {
               totalPresses += presses
           } else {
               // 문자를 만들 수 없는 경우
               canMake = false
               break
           }
       }
       
       // 결과 저장
       if canMake {
           result.append(totalPresses)
       } else {
           result.append(-1)
       }
   }
   
   return result
}
