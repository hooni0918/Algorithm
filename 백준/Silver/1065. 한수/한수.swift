
var n = Int(readLine()!)!
var count = 0

for i in 1...n {
    if i < 100 {
        count += 1
    }
    
    if i >= 100 {
        let list = Array(String(i)).map { Int(String($0))! }
        if list[2] - list[1] == list[1] - list[0] {
            count += 1 
        }
    
        
    }
}
print(count)
