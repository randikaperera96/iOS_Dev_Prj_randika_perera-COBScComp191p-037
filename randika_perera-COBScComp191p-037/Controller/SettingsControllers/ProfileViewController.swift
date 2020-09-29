//
//  ProfileViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/29/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit
import Firebase
import LocalAuthentication

class ProfileViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
	}
	
	@IBAction func btLogoutTapped(_ sender: Any) {
		do{
			try Auth.auth().signOut()
			
			self.showSuccessMessageDialog("Signed out successfully!")
			//				self.dismiss(animated: true, completion: nil)
			self.navigationController?.popViewController(animated: true)
		}catch{
			self.showErrorMessageDialog("Sign out error!")
		}
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
