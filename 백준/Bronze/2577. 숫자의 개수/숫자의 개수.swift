var N = 1
var dic = [Int](repeating: 0, count: 10)
// 각각 배열 번호에 들어갈 숫자의 빈도수를 셀 수 잇음

(0..<3).forEach { _ in
    N *= Int(readLine()!)!
}

while N > 0 {
    let rem = N % 10
    dic[rem] += 1
    N /= 10
}

dic.forEach { print($0)
    
}

