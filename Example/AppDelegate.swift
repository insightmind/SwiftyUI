//
//  AppDelegate.swift
//  Example
//
//  Created by Niklas Bülow on 30. Jun 2019.
//  Copyright © 2019 SwiftyUI. All rights reserved.
//

import UIKit

// MARK: - AppDelegate
/// The AppDelegate
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {ß
    /// The UIWindow
    var window: UIWindow?

    /// Application did finish launching with options
    ///
    /// - Parameters:
    ///   - application: The UIApplication
    ///   - launchOptions: The LaunchOptions
    /// - Returns: The launch result
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Initialize UIWindow
        self.window = .init(frame: UIScreen.main.bounds)
        // Make Key and Visible
        self.window?.makeKeyAndVisible()
        // Return positive launch
        return true
    }
}
