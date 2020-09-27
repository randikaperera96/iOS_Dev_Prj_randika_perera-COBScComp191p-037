//
//  DebugHelper.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/27/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import Foundation

class DebugHelper{
	
	static func getStringClassName (object:NSObject?) -> String{
		guard let obj = object else {
			return ""
		}
		
		return NSStringFromClass(type(of: obj))	}
	
	static func printDebugMessageOnConsole(_ message : String?){
		
		guard message != nil else {
			return
		}
		
		print("DEBUG: \(message)")
	}
}
