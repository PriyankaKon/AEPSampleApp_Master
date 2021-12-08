//
//  AppDelegate.swift
//  AEPSampleApp
//
//  Created by Nikhil Nandre on 12/6/21.
//  Copyright © 2021 Nikhil Nandre. All rights reserved.
//

import UIKit

import AEPServices
import AEPLifecycle
import AEPIdentity
import AEPSignal
import AEPCore
import AEPAnalytics
import AEPAssurance
import AEPUserProfile
import AEPMobileServices

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        MobileCore.setLogLevel(.debug)
        
        let extentions = [
            AEPMobileServices.self,
            Assurance.self,
            Analytics.self,
            Identity.self,
            Lifecycle.self,
            Signal.self,
            UserProfile.self
        ]
        
        MobileCore.registerExtensions(extentions, {
            MobileCore.configureWith(appId: "launch-ENfc0e1c5a935f48ee93bfc3af7538a594-development")
            MobileCore.lifecycleStart(additionalContextData: ["contextDataKey": "contextDataVal"])
        })
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

