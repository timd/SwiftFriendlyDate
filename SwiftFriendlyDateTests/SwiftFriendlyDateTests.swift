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
    
    func testKnownMethod() {
        var responds: Bool = NSDate.respondsToSelector("date")
        XCTAssertTrue(responds, "should respond to string but doesn't")
    }
    
    
//    it(@"should should respond to the partial methods", ^{
//    
//    it(@"should return an NSString when given two parameters", ^{
//    
//    it(@"should return nil if the second date is before the first date", ^{
//    

    //  should return 1 second when given two dates one second apart
    
    func testOneSecond() {
        
        var firstDate = NSDate()
        
        var secondDate = NSDate(timeInterval: 1, sinceDate: firstDate)
        
        let response = NSDate().friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        
        XCTAssertTrue(response == "1 sec", "should return 1 sec, but returned '\(response)'")
        
    }

    //  should return 10 seconds when given two dates ten seconds apart

    func testTenSeconds() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: 10, sinceDate: firstDate)
        let response = NSDate().friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "10 secs", "should return 10 secs, but returned '\(response)'")
    }

    
    // should return 1 minute if the two dates are 60 secs apart

    func testOneMinute() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: 60, sinceDate: firstDate)
        let response = NSDate().friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "1 min", "should return 1 min, but returned '\(response)'")
    }

    // should return 2 minutes if the two dates are 120 secs apart
    
    func testTwoMinutes() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: 120, sinceDate: firstDate)
        let response = NSDate().friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "2 mins", "should return 2 mins, but returned '\(response)'")
    }
    
    // should return 2 mins 30 secs if the two dates are 2 mins and 30 secs apart", ^{

    func testTwoMinutes30Seconds() {
        var firstDate = NSDate()
        var secondDate = NSDate(timeInterval: 150, sinceDate: firstDate)
        let response = NSDate().friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)
        XCTAssertTrue(response == "2 mins 30 secs", "should return 2 mins 30 secs, but returned '\(response)'")
    }
    
    // it(@"should return 30 minutes if the two dates are 1800 of each other", ^{
//    
//    it(@"should return 31 mins if the two dates are 1889 of each other", ^{
//    
//    it(@"should return 1 hour if the two dates are 3600 secs apart", ^{
//    
//    it(@"should return 1 hour if the two dates are 5400 seconds of each other", ^{
//    
//    it(@"should return 1 day if the two dates are 86,400 secs apart", ^{
//    
//    it(@"should return 1 day 12 hours if the two dates are 129600 secs apart", ^{
//    
//    it(@"should return 2 days if the two dates are 172800 secs apart", ^{
//    
//    it(@"should return 3 days 4 hours if the two dates are 274053 apart", ^{
    
}
