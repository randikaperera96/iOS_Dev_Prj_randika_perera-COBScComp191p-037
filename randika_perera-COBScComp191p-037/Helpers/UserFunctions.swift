//
//  UserFunctions.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/20/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import Foundation
import Firebase


class UserFunctions{
	
	static func getInstance()->UserFunctions{
		return UserFunctions()
	}
	
	private init() {
		
	}
	
	func logIn(_ email:String, _ password: String) -> Bool{
		
		
		return true;
	}
	
	func signUp(_ firstName:String,_ lastName:String,_ email:String,_ password:String, roleType:Int32) -> String{
		
		var err:String=""
		
		Auth.auth().createUser(withEmail: email, password: password) { ( result, error) in
			
			if error != nil {
				err=error.debugDescription;
			}else{
				let db = Firestore.firestore()
				
				db.collection("user").addDocument( data:[
					"uid":result!.user.uid,
					"first_name":firstName,
					"last_name":lastName,
					"role_type":roleType
				]) { (Error) in
					err = Error.debugDescription
				}
			}
		}
		
		return "Error: \(err)"
	}
}
