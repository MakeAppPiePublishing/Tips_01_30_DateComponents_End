//:# Time Zones and Date Components
//: A playground to play with advanced date classes

import UIKit
//: A date and a date formatter for use with this lesson
var date = Date()
let dateFormatter = DateFormatter()
dateFormatter.dateStyle = .medium
dateFormatter.timeStyle = .full
//: Type your code here
var timeZone = TimeZone.current
timeZone = TimeZone(identifier: "America/Los_Angeles")!
timeZone = TimeZone(abbreviation: "PDT")!
dateFormatter.timeZone = TimeZone.current
var dateComponents = Calendar.current.dateComponents(in: timeZone, from: Date())
dateComponents.year = 2018
dateComponents.month = 6
dateComponents.day = 4
dateComponents.hour = 10
dateComponents.minute = 0
dateComponents.second = 0
date = dateComponents.date!

//: This will print the date
print(dateFormatter.string(from: date))
