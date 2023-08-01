import Foundation

func solution(_ my_string: String, _ queries: [[Int]]) -> String {
    var result = Array(my_string)
    
    for query in queries {
        let start = query[0]
        let end = query[1]
        result[start...end].reverse()
    }
    
    return String(result)
}