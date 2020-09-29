//
//  SignUpViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/20/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit
import Firebase

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
		signUp(firstName, lastName, email, password, roleType: userType)
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

extension SignUpViewController{
	
	func signUp(_ firstName:String,_ lastName:String,_ email:String,_ password:String, roleType:Int32){
		
		Auth.auth().createUser(withEmail: email, password: password) { ( result, error) in
			
			if error != nil {
				self.view.makeToast(error.debugDescription)
			}else{
				let db = Firestore.firestore()
				
				db.collection("user").addDocument( data:[
					"uid":result!.user.uid,
					"first_name":firstName,
					"last_name":lastName,
					"role_type":roleType
				]) { (Error) in
					self.view.makeToast(Error.debugDescription)
					
					if (Error != nil) {
						DebugHelper.printAndShowDebugMessage("Error: \(Error) \n \(Error.debugDescription)", self)
					}else{
						self.dismiss(animated: true, completion: nil)
					}
				}
			}
		}
	}
}
