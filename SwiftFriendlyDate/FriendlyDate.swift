//
//  FriendlyDate.swift
//  SwiftFriendlyDate
//
//  Created by Tim on 03/08/14.
//  Copyright (c) 2014 Charismatic Megafauna Ltd. All rights reserved.
//

import Foundation

extension NSDate {
    
    func friendlyIntervalBetweenDates(firstDate: NSDate, secondDate: NSDate) -> String {
        
        var firstTimeInterval: NSTimeInterval = firstDate.timeIntervalSince1970
        
        var secondTimeInterval: NSTimeInterval = secondDate.timeIntervalSince1970
        
        if secondTimeInterval > firstTimeInterval {
            
            var difference: Int = Int(secondTimeInterval - firstTimeInterval)
            
            var days = Int(abs(difference / 86400))
            
            if (days > 0) {
                var daySeconds = days * 86400;
                difference = difference - daySeconds;
            }
            
            var hours = abs(difference / 3600);
            
            if (hours > 0) {
                var hourSeconds = hours * 3600;
                difference = difference - hourSeconds;
            }
            
            var mins = (abs)(difference / 60);
            
            if (mins > 0) {
                var minSeconds = mins * 60;
                difference = difference - minSeconds;
            }
            
            var results: String = ""
            
            if (days == 1) {
                results += "1 day "
            }
            
            if (days > 1) {
                results += "\(days) days "
            }
            
            if (hours == 1) {
                results += "1 hour "
            }
            
            if (hours > 1) {
                results += "\(hours) hours "
            }
            
            if (mins == 1) {
                results += "1 min "
            }
            
            if (mins > 1) {
                results += "\(mins) mins "
            }
            
            if (difference == 1) {
                results += "1 sec"
            }
            
            if (difference > 1) {
                results += "\(difference) secs"
            }
            
            // Trim trailing white space
            var trimmedString: String = results.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
            
            return trimmedString;
            
        }
        
        return "not yet implemented"
        
    }
    
    func partialIntervalBetweenDates(firstDate: NSDate, secondDate:NSDate) -> String {
        return "not yet implemented"
    }
    
}