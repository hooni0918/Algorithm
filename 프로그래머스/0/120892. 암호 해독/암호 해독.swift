import Foundation

func solution(_ cipher: String, _ code: Int) -> String {
    
 var charter = Array(cipher)
    var decryto = ""
    
    for i in stride(from: code - 1, to: charter.count, by: code){
        decryto.append(charter[i])
    }
    return decryto
}
