func solution(_ angle: Int) -> Int {
    if angle < 90 {
        return 1  // 예각
    } else if angle == 90 {
        return 2  // 직각
    } else if angle < 180 {
        return 3  // 둔각
    } else {
        return 4  // 평각
    }
}
