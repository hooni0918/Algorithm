import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

func solution(_ numer1: Int, _ denom1: Int, _ numer2: Int, _ denom2: Int) -> [Int] {
    // 분모의 최소공배수를 찾습니다.
    let lcm = denom1 * denom2 / gcd(denom1, denom2)
    
    // 분자의 합을 계산합니다.
    let totalNumer = numer1 * (lcm / denom1) + numer2 * (lcm / denom2)
    
    // 결과 분수를 기약분수로 만듭니다.
    let commonDivisor = gcd(totalNumer, lcm)
    return [totalNumer / commonDivisor, lcm / commonDivisor]
}