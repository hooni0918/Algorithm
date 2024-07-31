import Foundation

// 등급에 따른 과목평점 매핑
let gradeToPoint: [String: Double] = [
    "A+": 4.5, "A0": 4.0,
    "B+": 3.5, "B0": 3.0,
    "C+": 2.5, "C0": 2.0,
    "D+": 1.5, "D0": 1.0,
    "F": 0.0, "P": 0.0
]

var totalPoints = 0.0
var totalCredits = 0.0

// 20줄의 입력을 받음
for _ in 1...20 {
    let input = readLine()!.split(separator: " ")
    let courseName = String(input[0]) // 과목명
    let credit = Double(input[1])!    // 학점
    let grade = String(input[2])      // 등급

    // P 등급 과목은 계산에서 제외
    if grade != "P" {
        let point = gradeToPoint[grade]!
        totalPoints += credit * point
        totalCredits += credit
    }
}

// 전공 평점 계산
let gpa = totalPoints / totalCredits

// 출력
print(String(format: "%.6f", gpa))
