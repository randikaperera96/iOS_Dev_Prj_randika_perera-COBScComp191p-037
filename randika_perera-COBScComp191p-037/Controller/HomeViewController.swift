//
//  HomeViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/29/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UITableViewController {
	private let AUTH_SEGUE = "AuthSegue"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		checkAndShowLogIn()
		DebugHelper.printDebugMessageOnConsole("viewDidAppear")
	}
	
	
	
	@IBAction func safeActionsTapped(_ sender: Any) {
		
//		let storyBoard: UIStoryboard = UIStoryboard(name: "NavTest", bundle: nil)
//		let newViewController = storyBoard.instantiateViewController(withIdentifier: "navTest") as! NavTestViewController
//		newViewController.modalPresentationStyle = .fullScreen
//		self.present(newViewController, animated: true, completion: nil)
		
		performSegue(withIdentifier: "safeActions", sender: self)
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
	
	
	func checkAndShowLogIn(){
		if(Auth.auth().currentUser?.uid == nil){
			
			DispatchQueue.main.async {
				self.performSegue(withIdentifier: self.AUTH_SEGUE, sender: self)
			}
		}
	}
	
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//		super.tableView(tableView, didSelectRowAt: indexPath)
//		print("section: \(indexPath.section)")
//		print("row: \(indexPath.row)")
		
		if(indexPath.row == 6){
			performSegue(withIdentifier: "mapSegue", sender: self)
		}
	}
	
}
