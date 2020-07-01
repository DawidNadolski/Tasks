import Foundation

class TaskItem: NSObject {
  
  @objc var text = ""
  var checked = false
  
  func toggleChecked() {
    checked = !checked
  }
  
}


