import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    var mapping = Dictionary(uniqueKeysWithValues: zip(name, yearning))
    
    return photo.map { peple in
        peple.reduce(0) { sum, person in
            sum + (mapping[person] ?? 0)
        }
    }
    
}
