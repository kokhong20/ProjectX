//
//  File.swift
//  ProjectX
//
//  Created by KokHong on 6/10/19.
//  Copyright © 2019 Pointwelve. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    let id: String
    let name: String

    #if DEBUG
    static let sampleData = [
        Task(id: UUID().uuidString, name: "Task A"),
        Task(id: UUID().uuidString, name: "Task B")
    ]
    #endif
    
}
