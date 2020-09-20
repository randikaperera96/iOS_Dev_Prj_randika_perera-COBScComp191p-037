//
//  ViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/13/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

	@IBAction func buttonTapped(_ sender: Any) {
		
	let vc = UIViewController()
		vc.view.backgroundColor = .yellow
		
		navigationController?.pushViewController(vc, animated: true)
	}
	
}

