import Foundation

func solution(_ todoList: [String], _ finished: [Bool]) -> [String] {
    var unfinishedTasks = [String]()

    for (index, task) in todoList.enumerated() {
        if !finished[index] {
            unfinishedTasks.append(task)
        }
    }

    return unfinishedTasks
}