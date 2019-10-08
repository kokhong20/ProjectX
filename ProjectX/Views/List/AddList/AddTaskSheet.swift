//
//  AddTaskModalView.swift
//  ProjectX
//
//  Created by KokHong on 8/10/19.
//  Copyright © 2019 Pointwelve. All rights reserved.
//

import SwiftUI

struct AddTaskSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject private var state: AppState
    @State var listName: String = ""
    @State var categoryName: String = ""
    @State var quantity: Int = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Item information"),
                        content: {
                            VStack(alignment: .leading, spacing: 20.0) {
                                HStack {
                                    Text("Name:")
                                    TextField("Name your list", text: $listName)
                                }
                                HStack {
                                    Text("Category:")
                                    TextField("Choose your category", text: $categoryName)
                                }
                            }
                })
                Section(header: Text("Item information"),
                        content: {
                            VStack(alignment: .leading, spacing: 20.0) {
                                HStack {
                                    Text("Quantity:")
                                    TextField("Choose your Quantity", value: $quantity, formatter: NumberFormatter())
                                        .keyboardType(.numberPad)
                                }
                            }
                })
            }
            .navigationBarItems(
                leading:
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Cancel").foregroundColor(.red)
                    }),
                trailing:
                    Button(action: {
                        let newTask = Task(name: self.listName, quantity: self.quantity, category: self.categoryName)
                        
                        self.presentationMode.wrappedValue.dismiss()
                        self.state.dispatch(action: TaskAction.addTask(task: newTask))
                    }, label: {
                        Text("Save")
                    })
            )
            .navigationBarTitle(Text("New List"))
        }
        
    }
}
#if DEBUG
struct AddTaskModalView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskSheet().environmentObject(sampleStore)
    }
}
#endif
