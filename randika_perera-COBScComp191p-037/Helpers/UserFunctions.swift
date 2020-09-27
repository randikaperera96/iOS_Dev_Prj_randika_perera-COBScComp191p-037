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
	
	//	static func getInstance()->UserFunctions{
	//		return UserFunctions()
	//	}
	//
	//	private init() {
	//
	//	}
	
	static func logIn(_ email:String, _ password: String) -> Bool{
		
		var loggedIn = false
		
		Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
			
			loggedIn = (error == nil)
		}
		
		return loggedIn;
	}
	
	static func signUp(_ firstName:String,_ lastName:String,_ email:String,_ password:String, roleType:Int32) -> String{
		
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
	
	
	
	static func signOut() -> Bool{
		do{
			try Auth.auth().signOut()
			return true
		}catch{
			return false
		}
	}
	
	static func isLoggedIn() -> Bool{
		return Auth.auth().currentUser?.uid != nil
	}
}
