//
//  MainListView.swift
//  ProjectX
//
//  Created by KokHong on 6/10/19.
//  Copyright © 2019 Pointwelve. All rights reserved.
//

import SwiftUI

struct TaskListView: View {
    @EnvironmentObject private var state: AppState
    @State private var isAddTaskPresented = false
    
    var body: some View {
       NavigationView {

        List(state.taskState.tasks) { task in
                TaskRow(task: task)
            }
        .navigationBarTitle(Text("Main"))
        .navigationBarItems(trailing: Button(action: {
                self.isAddTaskPresented = true
        }) {
                Image(systemName: "plus")
                    .imageScale(.large)
        })
        .sheet(isPresented: $isAddTaskPresented,
                 content: { AddTaskSheet().environmentObject(self.state) })
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView().environmentObject(sampleStore)
    }
}
