import Foundation

let N = Int(readLine()!)!

var ingredients: [(sour: Int, bitter: Int)] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    ingredients.append((sour: input[0], bitter: input[1]))
}

var maxInt = Int.max

func diff(index :Int,used:Bool, sourflav:Int,bitterflav:Int) {
    
    if index == N {
        if used {
            let difference = abs(sourflav - bitterflav)
            maxInt = min(maxInt , difference)
        }
        return
    }
    
    diff(index: index + 1,
         used: true,
         sourflav: sourflav * ingredients[index].sour,
         bitterflav: bitterflav + ingredients[index].bitter
    )

    diff(index: index + 1,
         used: used,
         sourflav: sourflav,
         bitterflav: bitterflav
    )
    
}

diff(index: 0, used: false, sourflav: 1, bitterflav: 0)

print(maxInt)
