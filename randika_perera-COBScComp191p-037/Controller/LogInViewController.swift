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
		
		if(UserFunctions.isLoggedIn()){
			self.dismiss(animated: true, completion: nil)
		}
	}
	
	//MARK:IBMethods
	@IBAction func btSignInTapped(_ sender: Any) {
		
		guard let email = txtEmail.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {return}
		
		guard let password = txtPassword.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {return}
		
		UserFunctions.logIn(email, password)
		
		print("DEBUG: \(DebugHelper.getStringClassName(object: self)).btSignInTapped")
	}
}
