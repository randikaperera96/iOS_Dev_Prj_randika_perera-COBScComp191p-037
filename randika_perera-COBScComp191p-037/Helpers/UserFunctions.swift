//
//  UserFunctions.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/20/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import Foundation


class UserFunctions{
	
	static func getInstance()->UserFunctions{
		return UserFunctions()
	}
	
	private init() {
		
	}
	
	func logIn(_ email:String, _ password: String) -> Bool{
		
		
		return true;
	}
}
