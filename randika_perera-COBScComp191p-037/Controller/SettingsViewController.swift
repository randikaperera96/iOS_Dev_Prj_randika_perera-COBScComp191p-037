//
//  SettingsViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/20/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {
	
	//MARK: Properties
	private let AUTH_SEGUE = "AuthSegue"
	
	//MARK: Lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		checkAndShowLogIn()
	}
	
	
	@IBAction func btLogoutTapped(_ sender: Any) {
		do{
			try Auth.auth().signOut()

			DispatchQueue.main.async {
				self.showSuccessMessageDialog("Signed out successfully!")
				self.checkAndShowLogIn()

			}
		}catch{
			self.showErrorMessageDialog("Sign out error!")
		}
		
//		checkAndShowLogIn()
	}
	
	func checkAndShowLogIn(){

		DebugHelper.printDebugMessageOnConsole("start -----  \(Auth.auth().currentUser?.uid == nil)")
		if(Auth.auth().currentUser?.uid == nil){
			DispatchQueue.main.async {
				DebugHelper.printDebugMessageOnConsole("\(Auth.auth().currentUser?.uid == nil)")
				self.performSegue(withIdentifier: self.AUTH_SEGUE, sender: self)
			}
		}
	}
	
}
