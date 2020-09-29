//
//  AppDelegate.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/13/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	var window: UIWindow?
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		
		FirebaseApp.configure()
		
//		let storyboard = UIStoryboard(name: "Main", bundle: nil)
//		let vc = storyboard.instantiateViewControllerWithIdentifier(identifier) as! UIViewController
//		self.window?.rootViewController = vc
//
//		let storyboard = UIStoryboard(name: "Authentication", bundle: Controller)
//		let vc = storyboard.instantiateViewController(withIdentifier: "LogInViewController") as! UIViewController
//		self.window?.rootViewController = vc
		
		
		
		return true
	}
	
	// MARK: UISceneSession Lifecycle
	
	@available(iOS 13.0, *)
	func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
		// Called when a new scene session is being created.
		// Use this method to select a configuration to create the new scene with.
		return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
	}
	
	@available(iOS 13.0, *)
	func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
		// Called when the user discards a scene session.
		// If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
		// Use this method to release any resources that were specific to the discarded scenes, as they will not return.
	}
	
	
}

