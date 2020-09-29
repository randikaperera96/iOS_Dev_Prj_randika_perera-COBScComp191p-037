//
//  LogInViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/20/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit
import Firebase

class LogInViewController: UIViewController {
	
	@IBOutlet weak var txtEmail: UITextField!
	
	@IBOutlet weak var txtPassword: UITextField!
	
	
	
	//MARK:LifeCycle
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		checkLoggedInAndDismiss()
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
	
	
	//MARK:Auth Methods
	func signIn(){
		
		guard let email = txtEmail.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
			
			self.showErrorMessageDialog("Email can't be empty!")
			return
			
		}
		
		guard let password = txtPassword.text else {
			
			self.showErrorMessageDialog("Password can't be empty!")
			return
		}
		
		if(ValidationService.isStringEmpty(email)){
			
			self.showErrorMessageDialog("Email can't be empty!")
			return
		}
		
		if(ValidationService.isStringEmpty(password)){
			self.showErrorMessageDialog("Password can't be empty!")
			return
		}
		
		Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
			
			if error != nil {
				DebugHelper.printDebugMessageOnConsole(" \(error) \n \(error.debugDescription)")
				
				self.showErrorMessageDialog("Incorrect email or password!")
			}else{
				self.dismiss(animated: true, completion: nil)
			}
		}
		
		checkLoggedInAndDismiss()
		
	}
	
	func checkLoggedInAndDismiss(){
		if(Auth.auth().currentUser?.uid != nil){
			
			DispatchQueue.main.async {
				self.dismiss(animated: true, completion: nil)
			}
		}
	}
}
