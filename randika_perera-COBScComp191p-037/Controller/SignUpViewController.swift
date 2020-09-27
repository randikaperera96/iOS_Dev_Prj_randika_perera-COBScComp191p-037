//
//  SignUpViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/20/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
	
	@IBOutlet weak var txtFirstName: UITextField!
	
	@IBOutlet weak var txtLastName: UITextField!
	
	@IBOutlet weak var txtEmail: UITextField!
	
	
	@IBOutlet weak var txtPassword: UITextField!
	
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}
	
	@IBAction func btSignUpTapped(_ sender: Any) {
		
		guard let firstName = txtFirstName.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {return}
		
		guard let lastName = txtLastName.text?.trimmingCharacters(in: .whitespacesAndNewlines) else { return }
		
		guard let email = txtEmail.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {return}
		
		guard let password = txtPassword.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {return}
		
		let userType:Int32 = 0
		
		let error = UserFunctions.signUp(firstName, lastName, email, password, roleType: userType)
		
		if error != ""{
			print("DEBUG: \(error)")
		}
	}
	
	@IBAction func btGoToLoginTapped(_ sender: Any) {
		navigationController?.popViewController(animated: true)
	}
	
	
	/*
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
	// Get the new view controller using segue.destination.
	// Pass the selected object to the new view controller.
	}
	*/
	
}
