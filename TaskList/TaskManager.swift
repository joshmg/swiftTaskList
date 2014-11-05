import UIKit

var taskManager: TaskManager = TaskManager();

struct Task {
    var name: String;
    var description: String;
    
    func getName() -> String {
        return name;
    }
    func getDescription() -> String {
        return description;
    }
}

class TaskManager: NSObject {
    
    var taskList = [Task]();
    
    func addTask(taskName: String, taskDescription: String) -> Void {
        taskList.append(Task(name: taskName, description: taskDescription));
    }

    func removeTask(index: Int) -> Void {
        taskList.removeAtIndex(index);
    }

    func getSize() -> Int {
        return taskList.count;
    }

    func getTask(index: Int) -> Task {
        return taskList[index];
    }
}
