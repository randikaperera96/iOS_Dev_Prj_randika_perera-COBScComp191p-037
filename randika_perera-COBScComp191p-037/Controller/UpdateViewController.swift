//
//  UpdateViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/27/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit

class UpdateViewController: UIViewController {
	
	private let AUTH_SEGUE = "AuthSegue"

    override func viewDidLoad() {
        super.viewDidLoad()

        showLogin()
    }
	
	override func viewWillAppear(_ animated: Bool) {
		if(!UserFunctions.isLoggedIn()){
//			self.dismiss(animated: true, completion: nil)
			navigationController?.popViewController(animated: true)
		}
	}

}

extension UpdateViewController{
	
	func showLogin() -> Bool{
		if(UserFunctions.isLoggedIn()){
			return true
		}else{
			performSegue(withIdentifier: AUTH_SEGUE, sender: self)
			DebugHelper.printDebugMessageOnConsole("performed auth segue")
		}
		return true
	}
}
