//
//  TaskStore.swift
//  TaskManager2
//
//  Created by Evan Wineland on 4/24/15.
//  Copyright (c) 2015 Evan Wineland. All rights reserved.
//

import Foundation

class TaskStore {
    class var sharedInstance: TaskStore {
        struct Static {
            static let instance = TaskStore()
        }
        return Static.instance
    }
    
    // An array of tasks
    var tasks: [Task] = []
    
    // Add a task to the array of tasks
    func add(task: Task) {
        tasks.append(task)
    }
    
    // Change the task at a given index
    func replace(task: Task, atIndex index: Int) {
        tasks[index] = task
    }
    
    // Get the task at a given index
    func get(index: Int) -> Task {
        return tasks[index]
    }
    
    var count: Int {
        return tasks.count
    }
    
    func removeTaskAtIndex(index: Int) {
        tasks.removeAtIndex(index)
    }
}