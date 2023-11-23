import Foundation

func solution(_ common: [Int]) -> Int {
    if common.count < 2 {
        // 수열의 길이가 2보다 작으면, 다음 원소를 결정할 수 없습니다.
        return 0
    }

    let first = common[0]
    let second = common[1]

    if second - first == common[2] - second {
        // 공차가 같으면 등차수열
        let diff = second - first
        return common.last! + diff
    } else {
        // 공비가 같으면 등비수열
        let ratio = second / first
        return common.last! * ratio
    }
}