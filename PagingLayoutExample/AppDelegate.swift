//
//  AppDelegate.swift
//  PagingLayoutExample
//
//  Created by Uladzislau Abramchuk on 1/25/18.
//  Copyright © 2018 Uladzislau Abramchuk. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = ViewController()
        window!.rootViewController = vc
        window!.makeKeyAndVisible()
        return true
    }
}
 