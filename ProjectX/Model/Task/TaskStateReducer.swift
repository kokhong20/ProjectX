//
//  TaskStateReducer.swift
//  ProjectX
//
//  Created by KokHong on 6/10/19.
//  Copyright © 2019 Pointwelve. All rights reserved.
//

import Foundation
struct TaskStateReducer: Reducer {
    func reduce(state: TaskState, action: Action) -> TaskState {
        var state = state
        switch action {
        case TaskAction.fetchTasks:
            state.tasks = Task.sampleData
        default:
            break
        }
        return state
    }
}
