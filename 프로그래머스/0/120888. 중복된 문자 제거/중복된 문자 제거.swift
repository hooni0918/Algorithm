func solution(_ my_string:String) -> String {
    var usedCharacters = Set<Character>() // 사용된 문자를 추적할 Set
    var result = "" // 결과를 저장할 문자열

    for character in my_string {
        if !usedCharacters.contains(character) {
            usedCharacters.insert(character) // 문자를 Set에 추가
            result.append(character) // 결과 문자열에 문자 추가
        }
    }

    return result
}