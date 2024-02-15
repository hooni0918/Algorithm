func solution(_ s: String) -> String {
    var charCount = [Character: Int]()

    // 각 문자가 몇 번 등장하는지 세기
    for char in s {
        if let count = charCount[char] {
            charCount[char] = count + 1
        } else {
            charCount[char] = 1
        }
    }

    // 한 번만 등장하는 문자를 찾아 사전 순으로 정렬
    let singleChars = charCount.filter { $0.value == 1 }.map { $0.key }
    let sortedChars = singleChars.sorted()

    return String(sortedChars)
}
