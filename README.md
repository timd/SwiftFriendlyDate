SwiftFriendlyDate
=================

Being a first try at creating a Swift extension, to add a friendly date formatter to the `NSDate` class that returns time intervals between two dates, for example:

* `30 secs`
* `2 hours 22 secs`
* `1 day 10 hours 15 secs`

It extends the `NSDate` class to add two class methods:

* `func friendlyIntervalBetweenDates(firstDate: NSDate, secondDate: NSDate) -> String`
* `func partialIntervalBetweenDates(firstDate: NSDate, secondDate:NSDate) -> String`

`friendlyIntervalBetweenDates(firstDate: NSDate, secondDate: NSDate)` will return a full days, hours, mins and seconds string.

`partialIntervalBetweenDates(firstDate: NSDate, secondDate:NSDate)` will ignore seconds if the time difference is more than one minute, and ignore minutes if the difference is more than one hour - e.g.

* a difference of 1 min 20 secs will `1 min`
* a difference of 1 hour 20 mins 30 seconds will return `1 hour`
* a difference of 1 day 3 hours 40 mins 22 seconds will return `1 day 3 hours`

Both methods handle pluralisation.

Work in progress
---
* `friendlyIntervalBetweenDates(firstDate: NSDate, secondDate: NSDate)` will eventually return an optional `nil` value if invalid dates are passed in (e.g. the second date is before the first date). Currently it returns `Not yet implemented` :(
* `partialIntervalBetweenDates(firstDate: NSDate, secondDate:NSDate)` is not yet implemented

Usage
---

Include `FriendlyDate.swift` in your project.

    var firstDate = NSDate()
    var secondDate = NSDate(timeInterval: (90), sinceDate: firstDate)
    let response = NSDate.friendlyIntervalBetweenDates(firstDate, secondDate: secondDate)

will return

`1 min 30 secs`

Unit tests
---

`SwiftFriendlyDateTests` and `SwiftFriendlyPartialDateTests` are `XCTest` unit tests.