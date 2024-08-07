import Foundation

var words = [[String]](repeating: [String](repeating: "", count: 15), count : 5)


for w in 0..<5 {
    let word = readLine()!.map { String($0) }
    var lastWord = word.count - 1
    
    words[w].replaceSubrange(0...lastWord, with: word)
}

for i in 0..<15 {
    for j in 0..<5 {
        if words[j][i] != "" {
            print(words[j][i], terminator: "")
        }
    }
}
