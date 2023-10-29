import Foundation


func solution(_ names: [String]) -> [String] {
    
    var groupLeaders = [String]()

    for i in stride(from: 0, to: names.count, by: 5) {
        groupLeaders.append(names[i])
    }
    
    return groupLeaders
    
}
