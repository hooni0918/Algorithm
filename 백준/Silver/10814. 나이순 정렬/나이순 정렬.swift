import Foundation

let input = Int(readLine()!)!
var dic : [(age:Int , id: String)] = []

for i in 0..<input {

    let input = readLine()!.components(separatedBy: " ")
    dic.append((Int(input[0])!, input[1]))

}

dic.sort(by: { $0.age < $1.age })
dic.forEach { print("\($0.age) \($0.id)") }
