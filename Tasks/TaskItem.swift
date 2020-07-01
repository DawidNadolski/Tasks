//
//  TasksItem.swift
//  Tasks
//
//  Created by Brian on 6/19/18.
//  Copyright © 2018 Razeware. All rights reserved.
//

import Foundation

class TaskItem: NSObject {
  
  @objc var text = ""
  var checked = false
  
  func toggleChecked() {
    checked = !checked
  }
  
}


