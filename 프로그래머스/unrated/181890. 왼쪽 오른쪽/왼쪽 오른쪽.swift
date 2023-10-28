import Foundation

func solution(_ strList: [String]) -> [String] {
    var leftIdx = Int.max  // "l"의 인덱스 초기값을 Int의 최댓값으로 설정
    var rightIdx = Int.max  // "r"의 인덱스 초기값을 Int의 최댓값으로 설정

    // "l"과 "r"이 각각 언제 나오는지 찾기
    for (index, str) in strList.enumerated() {
        if str == "l" {
            leftIdx = min(leftIdx, index)
        } else if str == "r" {
            rightIdx = min(rightIdx, index)
        }
    }

    // "l"과 "r" 중 먼저 나온 것을 기준으로 왼쪽 또는 오른쪽에 있는 문자열 추출
    if leftIdx < rightIdx {
        return Array(strList[..<leftIdx])
    } else if rightIdx < leftIdx {
        return Array(strList[(rightIdx + 1)...])
    } else {
        return []
    }
}