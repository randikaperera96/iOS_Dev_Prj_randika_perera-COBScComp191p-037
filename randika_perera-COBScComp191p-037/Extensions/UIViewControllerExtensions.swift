//
//  UIViewControllerExtensions.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/27/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//
import UIKit

extension UIViewController {
	func showMessageDialog(_ title: String, _ message: String){
		
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
			switch action.style{
				case .default:
					print("default")
				
				case .cancel:
					print("cancel")
				
				case .destructive:
					print("destructive")
				
				
			}}))
		self.present(alert, animated: true, completion: nil)
	}
	
	func showErrorMessageDialog(_ message: String){
		showMessageDialog("Error", message)
	}
	
	
	func showWarningMessageDialog(_ message: String){
		showMessageDialog("Warning", message)
	}
	
	func showSuccessMessageDialog(_ message: String){
		showMessageDialog("Success", message)
	}
	
	func showInformationMessageDialog(_ message: String){
		showMessageDialog("Information", message)
	}
}
