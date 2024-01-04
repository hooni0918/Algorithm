func solution(_ hp: Int) -> Int {
    let generals = hp / 5
    let soldiers = (hp % 5) / 3
    let ants = hp - generals * 5 - soldiers * 3
    return generals + soldiers + ants
}
