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
import SafariServices

class SettingsViewController: UITableViewController, SFSafariViewControllerDelegate {
	
	let PROFILE_SEGUE = "profileSegue"
	
	let CONTACT_US_URL = URL(string: "https://www.nibmworldwide.com/contact")
	
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
	
	@IBAction func btContactUsTapped(_ sender: Any) {
		
//		UIApplication.shared.open(CONTACT_US_URL!, options: [UIApplication.OpenExternalURLOptionsKey : ], completionHandler: nil)
		let vc = SFSafariViewController(url: CONTACT_US_URL!)
		vc.delegate = self
		present(vc, animated: true, completion: nil);
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
