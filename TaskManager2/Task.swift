//
//  Task.swift
//  TaskManager2
//
//  Created by Evan Wineland on 4/24/15.
//  Copyright (c) 2015 Evan Wineland. All rights reserved.
//

import Foundation

struct Task {
    let title: String
    let notes: String
    
    init(title: String, notes: String) {
        self.title = title
        self.notes = notes
    }
}

