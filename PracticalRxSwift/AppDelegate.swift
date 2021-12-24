//
//  AppDelegate.swift
//  PracticalRxSwift
//
//  Created by Karim Ebrahem on 24/12/2021.
//

import UIKit
import Resolver

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        let rootViewController: HomeViewController = Resolver.resolve()

        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()

        return true
    }
}

