//
//  randika_perera_COBScComp191p_037Tests.swift
//  randika_perera-COBScComp191p-037Tests
//
//  Created by Randika Perera on 9/13/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import XCTest
@testable import NIBM_COVID19
//@testable import randika_perera_COBScComp191p_037

class randika_perera_COBScComp191p_037Tests: XCTestCase {
	
	func test_validation_service_is_string_empty(){
		XCTAssertFalse(ValidationService.isStringEmpty("a"))
		XCTAssertFalse(ValidationService.isStringEmpty(" a "))
		XCTAssertFalse(ValidationService.isStringEmpty(" a b "))
		XCTAssertTrue(ValidationService.isStringEmpty(""))
		XCTAssertTrue(ValidationService.isStringEmpty(" "))
		XCTAssertTrue(ValidationService.isStringEmpty("   "))
	}
	
	func test_validation_service_is_valid_password_length(){
		XCTAssertFalse(ValidationService.isValidPasswordLength("a"))
		XCTAssertFalse(ValidationService.isValidPasswordLength("ab"))
		XCTAssertFalse(ValidationService.isValidPasswordLength("abc"))
		XCTAssertTrue(ValidationService.isValidPasswordLength("abcdefg"))
		XCTAssertTrue(ValidationService.isValidPasswordLength("1234567"))
		XCTAssertTrue(ValidationService.isValidPasswordLength("abc123def"))
	}

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
