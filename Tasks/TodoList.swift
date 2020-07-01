import Foundation

class TodoList {
  
  enum Priority: Int, CaseIterable {
    case high, medium, low, no
  }
  
  private var highPriorityTodos: [TaskItem] = []
  private var mediumPriorityTodos: [TaskItem] = []
  private var lowPriorityTodos: [TaskItem] = []
  private var noPriorityTodos: [TaskItem] = []
  
  func addTodo(_ item: TaskItem, for priority: Priority, at index: Int = -1) {
    switch priority {
    case .high:
      if index < 0 {
        highPriorityTodos.append(item)
      } else {
        highPriorityTodos.insert(item, at: index)
      }
    case .medium:
      if index < 0 {
        mediumPriorityTodos.append(item)
      } else {
        mediumPriorityTodos.insert(item, at: index)
      }
    case .low:
      if index < 0 {
        lowPriorityTodos.append(item)
      } else {
        lowPriorityTodos.insert(item, at: index)
      }
    case .no:
      if index < 0 {
        noPriorityTodos.append(item)
      } else {
        noPriorityTodos.insert(item, at: index)
      }
    }
  }
  
  func todoList(for priority: Priority) -> [TaskItem] {
    switch priority {
    case .high:
      return highPriorityTodos
    case .medium:
      return mediumPriorityTodos
    case .low:
      return lowPriorityTodos
    case .no:
      return noPriorityTodos
    }
  }
  
  func newTodo() -> TaskItem {
    let item = TaskItem()
    item.text = randomTitle()
    item.checked  = true
    mediumPriorityTodos.append(item)
    return item
  }
  
  func move(item: TaskItem, from sourcePriority: Priority, at sourceIndex: Int, to destinationPriority: Priority, at destinationIndex: Int) {
    remove(item, from: sourcePriority, at: sourceIndex)
    addTodo(item, for: destinationPriority, at: destinationIndex)
    
  }
  
  func remove(_ item: TaskItem, from priority: Priority, at index: Int) {
    switch priority {
    case .high:
      highPriorityTodos.remove(at: index)
    case .medium:
      mediumPriorityTodos.remove(at: index)
    case .low:
      lowPriorityTodos.remove(at: index)
    case .no:
      noPriorityTodos.remove(at: index)
    }

  }
  
  private func randomTitle() -> String {
    let titles = ["New todo item", "Generic todo", "Fill me out", "I need something to do", "Much todo about nothing"]
    let randomNumber = Int.random(in: 0 ... titles.count - 1)
    return titles[randomNumber]
  }
  
}
