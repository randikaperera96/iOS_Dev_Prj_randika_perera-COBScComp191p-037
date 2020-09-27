//
//  SettingsViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/20/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
	
	//MARK: Properties
	
	
	//MARK: Lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	
	@IBAction func btLogoutTapped(_ sender: Any) {
		
		//		let vc = LogInViewController()
		//		self.navigationController?.pushViewController(vc, animated: true)
		
		UserFunctions.signOut()
		self.dismiss(animated: true
			, completion: nil)
	}
	
}
