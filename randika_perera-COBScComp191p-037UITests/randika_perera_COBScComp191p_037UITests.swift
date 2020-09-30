//
//  randika_perera_COBScComp191p_037UITests.swift
//  randika_perera-COBScComp191p-037UITests
//
//  Created by Randika Perera on 9/13/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import XCTest
@testable import NIBM_COVID19
import Firebase

class randika_perera_COBScComp191p_037UITests: XCTestCase {
	
	func test_sign_in_correct_credentials(){
		let app = XCUIApplication()
		app.launch()
		
		app.textFields["Email"].tap()
		
		let tKey = app/*@START_MENU_TOKEN@*/.keys["t"]/*[[".keyboards.keys[\"t\"]",".keys[\"t\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		tKey.tap()
		
		let eKey = app/*@START_MENU_TOKEN@*/.keys["e"]/*[[".keyboards.keys[\"e\"]",".keys[\"e\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		eKey.tap()
		
		let sKey = app/*@START_MENU_TOKEN@*/.keys["s"]/*[[".keyboards.keys[\"s\"]",".keys[\"s\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		sKey.tap()
		tKey.tap()
		
		let moreKey = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"numbers\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
		moreKey.tap()
		
		let key = app/*@START_MENU_TOKEN@*/.keys["@"]/*[[".keyboards.keys[\"@\"]",".keys[\"@\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		key.tap()
		
		let moreKey2 = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"letters\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
		moreKey2.tap()
		
		tKey.tap()
		moreKey.tap()
		
		let key2 = app/*@START_MENU_TOKEN@*/.keys["."]/*[[".keyboards.keys[\".\"]",".keys[\".\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		key2.tap()
		moreKey2.tap()
		
		let cKey = app/*@START_MENU_TOKEN@*/.keys["c"]/*[[".keyboards.keys[\"c\"]",".keys[\"c\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		cKey.tap()
		
		let oKey = app/*@START_MENU_TOKEN@*/.keys["o"]/*[[".keyboards.keys[\"o\"]",".keys[\"o\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		oKey.tap()
		
		let mKey = app/*@START_MENU_TOKEN@*/.keys["m"]/*[[".keyboards.keys[\"m\"]",".keys[\"m\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		mKey.tap()
		
		app.secureTextFields["Password"].tap()
		moreKey2.tap()
		let app2 = app
		app2/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
		
		let key3 = app2/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		key3.tap()
		
		let key4 = app2/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		key4.tap()
		
		let key5 = app2/*@START_MENU_TOKEN@*/.keys["4"]/*[[".keyboards.keys[\"4\"]",".keys[\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		key5.tap()
		app2/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
		
		let key6 = app2/*@START_MENU_TOKEN@*/.keys["6"]/*[[".keyboards.keys[\"6\"]",".keys[\"6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		key6.tap()
		app.buttons["Sign In"].tap()
		
		
		app.tables/*@START_MENU_TOKEN@*/.staticTexts["Get quick update about lecture schedule stay tuned with LMS"]/*[[".cells.staticTexts[\"Get quick update about lecture schedule stay tuned with LMS\"]",".staticTexts[\"Get quick update about lecture schedule stay tuned with LMS\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
		app.navigationBars["Notifications"].buttons["< Back"].tap()
		
		let tabBarsQuery = app.tabBars
		tabBarsQuery.buttons["Update"].tap()
		tabBarsQuery.buttons["Settings"].tap()
		tabBarsQuery.buttons["Home"].tap()
						
	}
	
	func test_sign_in_wrong_credentials(){
		let app = XCUIApplication()
		app.launch()
		
		app.buttons["Sign In"].tap()
		app.alerts["Error"].scrollViews.otherElements.buttons["OK"].tap()
		app.textFields["Email"].tap()
		
		let tKey = app/*@START_MENU_TOKEN@*/.keys["t"]/*[[".keyboards.keys[\"t\"]",".keys[\"t\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		tKey.tap()
		
		let eKey = app/*@START_MENU_TOKEN@*/.keys["e"]/*[[".keyboards.keys[\"e\"]",".keys[\"e\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		eKey.tap()
		
		let sKey = app/*@START_MENU_TOKEN@*/.keys["s"]/*[[".keyboards.keys[\"s\"]",".keys[\"s\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		sKey.tap()
		tKey.tap()
		
		let moreKey = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"numbers\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
		moreKey.tap()
		
		let key = app/*@START_MENU_TOKEN@*/.keys["@"]/*[[".keyboards.keys[\"@\"]",".keys[\"@\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		key.tap()
		moreKey.tap()
		tKey.tap()
		
		let moreKey2 = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"letters\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
		moreKey2.tap()
		
		let key2 = app/*@START_MENU_TOKEN@*/.keys["."]/*[[".keyboards.keys[\".\"]",".keys[\".\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		key2.tap()
		moreKey2.tap()
		
		let cKey = app/*@START_MENU_TOKEN@*/.keys["c"]/*[[".keyboards.keys[\"c\"]",".keys[\"c\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		cKey.tap()
		
		let oKey = app/*@START_MENU_TOKEN@*/.keys["o"]/*[[".keyboards.keys[\"o\"]",".keys[\"o\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		oKey.tap()
		
		let mKey = app/*@START_MENU_TOKEN@*/.keys["m"]/*[[".keyboards.keys[\"m\"]",".keys[\"m\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		mKey.tap()
		app.secureTextFields["Password"].tap()
		
		let qKey = app/*@START_MENU_TOKEN@*/.keys["q"]/*[[".keyboards.keys[\"q\"]",".keys[\"q\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		qKey.tap()
		qKey.tap()
		qKey.tap()
		qKey.tap()
		qKey.tap()
		qKey.tap()
		qKey.tap()
		qKey.tap()
		qKey.tap()
		qKey.tap()
		qKey.tap()
		qKey.tap()
		
		app.buttons["Sign In"].tap()
		app.alerts["Error"].scrollViews.otherElements.buttons["OK"].tap()
		
	}
	
	//    override func setUpWithError() throws {
	//        // Put setup code here. This method is called before the invocation of each test method in the class.
	//
	//        // In UI tests it is usually best to stop immediately when a failure occurs.
	//        continueAfterFailure = false
	//
	//        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
	//    }
	//
	//    override func tearDownWithError() throws {
	//        // Put teardown code here. This method is called after the invocation of each test method in the class.
	//    }
	//
	//    func testExample() throws {
	//        // UI tests must launch the application that they test.
	//        let app = XCUIApplication()
	//        app.launch()
	//
	//        // Use recording to get started writing UI tests.
	//        // Use XCTAssert and related functions to verify your tests produce the correct results.
	//    }
	//
	//    func testLaunchPerformance() throws {
	//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
	//            // This measures how long it takes to launch your application.
	//            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
	//                XCUIApplication().launch()
	//            }
	//        }
	//    }
}
