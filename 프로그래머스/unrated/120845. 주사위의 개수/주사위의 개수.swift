func solution(_ box:[Int], _ n:Int) -> Int {
    let width = box[0] / n
    let height = box[1] / n
    let depth = box[2] / n
    
    return width * height * depth
}
