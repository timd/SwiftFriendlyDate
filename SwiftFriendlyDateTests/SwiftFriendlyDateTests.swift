//
//  SwiftFriendlyDateTests.swift
//  SwiftFriendlyDateTests
//
//  Created by Tim on 03/08/14.
//  Copyright (c) 2014 Charismatic Megafauna Ltd. All rights reserved.
//

import UIKit
import XCTest

class SwiftFriendlyDateTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFriendlyIntervalMethodExists() {
        var responds: Bool = NSDate.respondsToSelector("friendlyIntervalBetweenDates:secondDate:")
        XCTAssertTrue(responds, "should respond to friendlyInterval but doesn't")
    }
    
    // TODO: should return nil if the second date is before the first date

    //  should return 1 second when given two dates one second apart
    func testOneSecond() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: 1, sinceDate: firstDate)
        let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "1 sec", "should return 1 sec, but returned '\(response)'")
    }

    //  should return 10 seconds when given two dates ten seconds apart
    func testTenSeconds() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: 10, sinceDate: firstDate)
        let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "10 secs", "should return 10 secs, but returned '\(response)'")
    }

    // should return 1 minute if the two dates are 60 secs apart
    func testOneMinute() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: 60, sinceDate: firstDate)
        let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "1 min", "should return 1 min, but returned '\(response)'")
    }

    // should return 2 minutes if the two dates are 120 secs apart
    func testTwoMinutes() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: 120, sinceDate: firstDate)
        let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "2 mins", "should return 2 mins, but returned '\(response)'")
    }
    
    // should return 2 mins 30 secs if the two dates are 2 mins and 30 secs apart", ^{
    func testTwoMinutes30Seconds() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: 150, sinceDate: firstDate)
        let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "2 mins 30 secs", "should return 2 mins 30 secs, but returned '\(response)'")
    }
    
    // should return 30 minutes if the two dates are 1800 of each other
    func test30Minutes() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: (30 * 60), sinceDate: firstDate)
        let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "30 mins", "should return 30 mins, but returned '\(response)'")
    }
    
    // should return 31 mins if the two dates are 1889 of each other
    func test31Minutes() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: (31*60), sinceDate: firstDate)
        let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "31 mins", "should return 31 mins, but returned '\(response)'")
    }

    // should return 1 hour if the two dates are 3600 secs apart
    func test1Hour() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: (60*60), sinceDate: firstDate)
        let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "1 hour", "should return 1 hour, but returned '\(response)'")
    }
    
    // should return 1 hour 30 mins if the two dates are 5400 seconds of each other
    func test1Hour30Minutes() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: (90*60), sinceDate: firstDate)
        let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "1 hour 30 mins", "should return 1 hour 30 mins, but returned '\(response)'")
    }
    
    // should return 1 day if the two dates are 86,400 secs apart
    func test1day() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: (24*60*60), sinceDate: firstDate)
        let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "1 day", "should return 1 day, but returned '\(response)'")
    }
    
    // should return 1 day 12 hours if the two dates are 129600 secs apart
    func test1day12hours() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: (36*60*60), sinceDate: firstDate)
        let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "1 day 12 hours", "should return 1 day 12 hours, but returned '\(response)'")
    }
    
    // should return 2 days if the two dates are 172800 secs apart
    func test2days() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: (48*60*60), sinceDate: firstDate)
        let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "2 days", "should return 2 days, but returned '\(response)'")
    }
    
    // should return 3 days 4 hours if the two dates are 274053 apart
    func test3days4hours() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: (76*60*60), sinceDate: firstDate)
        let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "3 days 4 hours", "should return 3 days 4 hours, but returned '\(response)'")
    }
    
}
