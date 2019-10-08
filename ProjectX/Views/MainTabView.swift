//
//  MainTabView.swift
//  ProjectX
//
//  Created by KokHong on 6/10/19.
//  Copyright © 2019 Pointwelve. All rights reserved.
//

import Combine
import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var state: AppState
    @State var selectedIndex: Int = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            TaskListView()
                .tabItem({ Text("Main") })
        }
    }
}

#if DEBUG
struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView().environmentObject(sampleStore)
    }
}
#endif
