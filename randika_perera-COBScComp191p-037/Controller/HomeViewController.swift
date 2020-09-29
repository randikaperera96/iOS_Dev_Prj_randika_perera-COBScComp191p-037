//
//  HomeViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/29/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {
	private let AUTH_SEGUE = "AuthSegue"

    override func viewDidLoad() {
        super.viewDidLoad()
		showLogin()
    }
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		showLogin()
		DebugHelper.printAndShowDebugMessage("viewDidAppear", self)
	}
	
	
	
	@IBAction func safeActionsTapped(_ sender: Any) {
//		view.makeToast("safeActionsTapped")
//		let sb: UIStoryboard = UIStoryboard(name: "NavTest", bundle: nil)
//		let vc  = sb.instantiateViewController(identifier: "navTest") as! NavTestViewController
		
		let storyBoard: UIStoryboard = UIStoryboard(name: "NavTest", bundle: nil)
		let newViewController = storyBoard.instantiateViewController(withIdentifier: "navTest") as! NavTestViewController
		newViewController.modalPresentationStyle = .fullScreen
		self.present(newViewController, animated: true, completion: nil)
	}

	
//	// MARK: - Table view data source
//	
//	override func numberOfSections(in tableView: UITableView) -> Int {
//		// #warning Incomplete implementation, return the number of sections
//		return 2
//	}
//	
//	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//		// #warning Incomplete implementation, return the number of rows
//		return 2
//	}

	

}
extension HomeViewController{
	
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
