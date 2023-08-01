import Foundation

func solution(_ my_string: String, _ index_list: [Int]) -> String {
    
    let result = index_list.map { index in
        String(my_string[my_string.index(my_string.startIndex, offsetBy: index)])
    }.joined()
    
    return result
}