//
//  AppState.swift
//  ProjectX
//
//  Created by KokHong on 6/10/19.
//  Copyright © 2019 Pointwelve. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class AppState: ObservableObject {
    var objectWillChange = PassthroughSubject<AppState, Never>()
    var taskState: TaskState
    
    let taskReducer = TaskStateReducer()
    
    init(taskState: TaskState = TaskState()) {
        self.taskState = taskState
    }
    
    func dispatch(action: Action) {
        taskState = taskReducer.reduce(state: taskState, action: action)
        objectWillChange.send(self)
    }
}

let store = AppState()

#if DEBUG
let sampleStore = AppState(taskState: TaskState(tasks: Task.sampleData))
let emptyStore = AppState(taskState: TaskState())
#endif

