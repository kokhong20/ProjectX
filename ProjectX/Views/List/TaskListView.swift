//
//  MainListView.swift
//  ProjectX
//
//  Created by KokHong on 6/10/19.
//  Copyright © 2019 Pointwelve. All rights reserved.
//

import SwiftUI

struct TaskListView: View {
    @EnvironmentObject var state: AppState
    
    var body: some View {
       NavigationView {
        List(state.taskState.tasks) { task in
                TaskRow(task: task)
            }
                .navigationBarTitle(Text("Main"))
                .navigationBarItems(trailing: EditButton())
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView().environmentObject(sampleStore)
    }
}
