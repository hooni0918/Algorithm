import Foundation

let N = Int(readLine()!)!  // 첫 번째 줄에서 단어의 개수 N을 입력받음
var groupWordCount = 0    // 그룹 단어의 개수를 세기 위한 카운터

for _ in 0..<N {
    let word = readLine()!    // 단어 입력받기
    var isGroupWord = true    // 현재 단어가 그룹 단어인지를 판단하는 플래그
    var seenCharacters = Set<Character>()  // 이미 나온 문자를 저장하는 집합
    var lastCharacter: Character?   // 직전에 검사한 문자를 저장하는 변수

    for character in word {
        if let lastChar = lastCharacter {
            if lastChar != character && seenCharacters.contains(character) {
                isGroupWord = false  // 이전에 나온 적 있는 문자가 다시 나타났고, 연속적이지 않으면 그룹 단어가 아님
                break
            }
        }
        seenCharacters.insert(character)  // 문자 집합에 현재 문자 추가
        lastCharacter = character  // 직전 문자를 현재 문자로 업데이트
    }

    if isGroupWord {
        groupWordCount += 1  // 그룹 단어라면 카운터 증가
    }
}

print(groupWordCount)  // 그룹 단어의 총 개수 출력
