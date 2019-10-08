//
//  ListRow.swift
//  ProjectX
//
//  Created by KokHong on 6/10/19.
//  Copyright © 2019 Pointwelve. All rights reserved.
//

import SwiftUI

struct TaskRow: View {
    let task: Task
    
    var body: some View {
        HStack(alignment: .top, spacing: 20.0) {
            VStack(alignment: .leading) {
                Text("Name")
                Text(task.name)
                    .foregroundColor(.secondary)
                    .lineLimit(0)
            }
            
            VStack(alignment: .leading) {
                Text("Category")
                Text(task.category)
                    .foregroundColor(.secondary)
                    .lineLimit(0)
            }
            
            VStack(alignment: .leading) {
                Text("Quantity")
                Text("\(task.quantity)")
                    .foregroundColor(.secondary)
                    .lineLimit(0)
            }
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: Task.sampleData[0])
    }
}
