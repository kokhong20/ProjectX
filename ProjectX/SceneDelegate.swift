//
//  SceneDelegate.swift
//  ProjectX
//
//  Created by KokHong on 23/9/19.
//  Copyright © 2019 Pointwelve. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let mainView = MainTabView()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: mainView.environmentObject(store))
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

