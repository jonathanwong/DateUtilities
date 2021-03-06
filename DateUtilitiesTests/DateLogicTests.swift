//
//  DateLogicTests.swift
//  DateUtilitiesTests
//
//  Created by Jonathan Wong on 2/10/19.
//  Copyright © 2019 Jonathan Wong. All rights reserved.
//

import XCTest
@testable import DateUtilities

class DateLogicTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testValidateSuccess() {
        let start = Date()
        var end = start.addingTimeInterval(100)
        XCTAssertTrue(DateLogic.validate(from: start, to: end))
        XCTAssertFalse(DateLogic.validate(from: start, to: start))
        end = start.addingTimeInterval(-100)
        XCTAssertFalse(DateLogic.validate(from: start, to: end))
    }

}
