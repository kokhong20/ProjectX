//
//  File.swift
//  ProjectX
//
//  Created by KokHong on 6/10/19.
//  Copyright © 2019 Pointwelve. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let quantity: Int
    let category: String

    #if DEBUG
    static let sampleData = [
        Task(name: "Task A", quantity: 1, category: Category.milk.rawValue),
        Task(name: "Task B", quantity: 2, category: Category.vege.rawValue)
    ]
    #endif
    
}
