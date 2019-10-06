//
//  TaskState.swift
//  ProjectX
//
//  Created by KokHong on 6/10/19.
//  Copyright © 2019 Pointwelve. All rights reserved.
//

import Foundation
struct TaskState: FluxState {
    var tasks: [Task]
    var isEdittingTask = false
    
    init(tasks: [Task] = []) {
        self.tasks = tasks
    }
}
