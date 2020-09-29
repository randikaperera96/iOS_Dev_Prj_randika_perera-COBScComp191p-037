//
//  DebugHelper.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/27/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import Foundation
import UIKit
import Toast

class DebugHelper{
	
	static func getStringClassName (object:NSObject?) -> String{
		
		guard let obj = object else {return ""}
		
		return NSStringFromClass(type(of: obj))	}
	
	static func printDebugMessageOnConsole(_ message : String){
		
		guard message != nil else {return}
		
		print("DEBUG: \(message)")
	}
	
	static func showDebugMessageOnToast(_ message : String, _ sender : UIViewController){
//		guard message != nil else {return}
//		guard sender != nil else {return}
		
		sender.view.makeToast(message)
	}
	
	static func showDebugMessageOnAlert(_ message : String, _ sender : UIViewController){
		sender.showMessageDialog("DEBUG", message)
	}
	
	static func printAndShowDebugMessage(_ message : String, _ sender : UIViewController){
		
		printDebugMessageOnConsole(message)
		showDebugMessageOnToast(message, sender)
		showDebugMessageOnAlert(message, sender)
	}
}
