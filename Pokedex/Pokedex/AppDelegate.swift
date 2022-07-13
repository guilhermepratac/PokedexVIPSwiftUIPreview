//
//  AppDelegate.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let viewController = HomeFactory.make(with: .init())

        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = UINavigationController(rootViewController: viewController)

        return true
    }


}

