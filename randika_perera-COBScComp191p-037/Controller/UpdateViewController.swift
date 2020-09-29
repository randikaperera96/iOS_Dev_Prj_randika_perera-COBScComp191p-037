//
//  UpdateViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/27/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit
import Firebase

class UpdateViewController: UIViewController {
	
	private let AUTH_SEGUE = "AuthSegue"
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		checkAndShowLogIn()
	}
	
}

extension UpdateViewController{
	
	func checkAndShowLogIn(){
		if(Auth.auth().currentUser?.uid == nil){
			
			DispatchQueue.main.async {
				self.performSegue(withIdentifier: self.AUTH_SEGUE, sender: self)
			}
		}
	}
}
