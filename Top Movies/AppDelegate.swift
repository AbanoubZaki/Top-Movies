//
//  AppDelegate.swift
//  Top Movies
//
//  Created by Abanoub Zaki on 13/11/2022.
//

import UIKit

@available(iOS 13.0, *)
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window : UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        setupAppStartScreen()
        return true
    }

    private func setupAppStartScreen() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = HomeModuleBuilder.build()
        window?.makeKeyAndVisible()
    }

}

