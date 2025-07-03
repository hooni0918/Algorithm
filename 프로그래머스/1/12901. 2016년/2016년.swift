import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    
    let days = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
        let months = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let totalCount = months.prefix(a - 1).reduce(0,+) + b - 1
    
    return days[totalCount % 7]
}
