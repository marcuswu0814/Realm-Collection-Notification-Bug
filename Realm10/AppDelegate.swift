//
//  AppDelegate.swift
//  Realm10
//
//  Created by Marcus Wu on 2021/1/6.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        RealmInitializer().setup()
        
        return true
    }

}

