//
//  NotificationsViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/29/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
	@IBAction func btBackNavTapped(_ sender: UIBarButtonItem) {
		
		self.dismiss(animated: true, completion: nil)
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
