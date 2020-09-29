//
//  SettingsViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/20/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit
import Firebase
import LocalAuthentication

class SettingsViewController: UITableViewController {
	
	let PROFILE_SEGUE = "profileSegue"
	
	//MARK: Properties
	private let AUTH_SEGUE = "AuthSegue"
	
	//MARK: Lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		checkAndShowLogIn()
	}
	
	
	@IBAction func btProfileTapped(_ sender: Any) {
		biometricAuth()
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
	
	func biometricAuth(){
		let context = LAContext()
		var error: NSError?
		
		if(context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error)){
			let reason = "Confirm identity to view profile!"
			context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason){ [ weak self ] success, authenticationError in
				DispatchQueue.main.async {
					if success {
						self?.performSegue(withIdentifier: "profileSegue", sender: self)
					}else{
						self?.showErrorMessageDialog("Biometrics failed! Please Try again")
					}
				}
			}
		}else{
			showErrorMessageDialog("Biometric authentication unavailable!")
		}
		
	}
	
}
