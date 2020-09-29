//
//  ValidationService.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/30/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import Foundation
import UIKit

class ValidationService {
	
	static func isStringEmpty(_ string: String) -> Bool {
		
		return string.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty;
	}
	
	static func isValidPasswordLength(_ password: String) -> Bool{
		return password.count>=6
	}
}
