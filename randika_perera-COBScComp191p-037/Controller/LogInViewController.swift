//
//  LogInViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/20/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit
import Firebase
import Toast

class LogInViewController: UIViewController {
	
	@IBOutlet weak var txtEmail: UITextField!
	
	@IBOutlet weak var txtPassword: UITextField!
	
	
	
	//MARK:LifeCycle
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		if(UserFunctions.isLoggedIn()){
			self.dismiss(animated: true, completion: nil)
		}
	}
	
	//MARK:IBMethods
	@IBAction func btSignInTapped(_ sender: Any) {
		
		signIn()
	}
	
	
	@IBAction func btExitTapped(_ sender: UIBarButtonItem) {
		
		exit(EXIT_SUCCESS)
	}
	
}

extension LogInViewController{
	
	func signIn(){
//		DebugHelper.printAndShowDebugMessage("\(DebugHelper.getStringClassName(object: self)).btSignInTapped", self)
		
		guard let email = txtEmail.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
			
			let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: .alert)
			alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
				switch action.style{
					case .default:
						print("default")
					
					case .cancel:
						print("cancel")
					
					case .destructive:
						print("destructive")
					
					
				}}))
			self.present(alert, animated: true, completion: nil)
			
			return}
		
		guard let password = txtPassword.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {return}
		
		let res = UserFunctions.logIn(email, password)
		
//		if UserFunctions.isLoggedIn(){
//
//			DispatchQueue.main.async {
//				DebugHelper.printDebugMessageOnConsole("Login status : \(res)")
//				DebugHelper.printDebugMessageOnConsole("Login status 2 : \(UserFunctions.isLoggedIn())")
//				if res {
//					self.view.makeToast("Logged In Successfully!")
//					DebugHelper.printAndShowDebugMessage("after toast", self)
//				}
//			}
//		}
//		let crrentUser = Auth.auth().currentUser
		let isLoggedIn = Auth.auth().currentUser?.uid != nil
//		let uid = Auth.auth().currentUser?.uid
		
		if(isLoggedIn /*Auth.auth().currentUser?.uid != nil*/) {
			DispatchQueue.main.async {
//				let nav = UINavigationController(rootViewController: ())
//				nav.modalPresentationStyle = .fullScreen
//				self.present(nav, animated: true, completion: nil)
				self.dismiss(animated: true, completion: nil)
			}
		}
	}
}
