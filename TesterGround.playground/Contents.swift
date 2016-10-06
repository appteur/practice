//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//protocol FizzBuzzDelegate
//{
//    func fizzBuzzString(for num:Int)->String
//}
//
//class FizzBuzz:FizzBuzzDelegate
//{
//    func isDivisible(divisor:Int, by:Int) ->Bool
//    {
//        return divisor % by == 0
//    }
//    
//    func fizzBuzzString(for num:Int)->String
//    {
//        if self.isDivisible(divisor: num, by: 15)
//        {
//            return "FizzBuzz"
//        }
//        else if self.isDivisible(divisor: num, by: 5)
//        {
//            return "Buzz"
//        }
//        else if self.isDivisible(divisor: num, by: 3)
//        {
//            return "Fizz"
//        }
//        
//        return "\(num)"
//    }
//    
//    func logDivisors()
//    {
//        for i in 1..<101
//        {
//            let desc = self.fizzBuzzString(for: i)
//            print("\(i) is \(desc)")
//        }
//    }
//}


//let fizzbuzz = FizzBuzz()
//fizzbuzz.logDivisors()



//class FizzBuzzTest
//{
//    func testIsDivisible(by:Int)
//    {
//        let fizzBuzz = FizzBuzz()
//        let result = fizzBuzz.divisible(by: 3)
////        XCTAssertEqual(result, true)
//    }
//}


//
//func makeTable(size:Int)
//{
//    for row in 1...size
//    {
//        var string = ""
//        for column in 1...size
//        {
//            let sum = row * column
//            string = string+"\(sum) "
//        }
//        print(string)
//    }
//}

//makeTable(size:3)

//
//func stringForTime(hour:Int)->String
//{
//    guard hour > 0 else {
//        print("Received hour out of bounds: \(hour)")
//        return "Invalid Time"
//    }
//    
//    guard hour <= 24 else {
//        print("time out of bounds: \(hour)")
//        return "Invalid Time"
//    }
//    
//    if hour < 12
//    {
//        let time = (hour == 0) ? "12" : "\(hour)"
//        return "\(time):00AM"
//    }
//    else if hour == 12
//    {
//        return "\(hour):00PM"
//    }
//    else if hour < 24
//    {
//        return "\(hour - 12):00PM"
//    }
//    else if hour == 24
//    {
//        return "\(hour - 12):00AM"
//    }
//    
//    return ""
//}

//print(stringForTime(hour: 0))
//print(stringForTime(hour: 3))
//print(stringForTime(hour: 6))
//print(stringForTime(hour: 9))
//print(stringForTime(hour: 12))
//print(stringForTime(hour: 15))
//print(stringForTime(hour: 17))
//print(stringForTime(hour: 18))
//print(stringForTime(hour: 24))


// Staircase

//class TimeConversion
//{
//    var count = 6
//    
//    class func runTest()
//    {
//        let stair = TimeConversion()
//        stair.process()
//    }
//    
//    func process()
//    {
//        
//    }
//
//}
//
//
//TimeConversion.runTest()




//let secondsPerDay:TimeInterval = 24*60*60
//let secondsPerWeek:TimeInterval = 24*60*60*7
//let formatter:DateFormatter = DateFormatter()
//
//let date = Date.init(timeIntervalSinceNow: -secondsPerDay)
//let calendar = Calendar.autoupdatingCurrent
//
////let isThisWeek = calendar.range(of: .day, in: .wee, for: date)
//
//
////formatter.dateFormat = "yyyy-MM-dd"
////
////let dateString = "2016-10-01T11:12:07Z"
////let newStr = formatter.date(from: dateString)
//
//let nowInterval = Date().timeIntervalSinceReferenceDate
//let weekAgo = nowInterval - secondsPerWeek
//let weekAgoDate = Date.init(timeIntervalSinceReferenceDate: weekAgo)
//
//let lastWeekStart = calendar.startOfDay(for: weekAgoDate)
//let startOfWeekAgo = lastWeekStart.timeIntervalSinceReferenceDate








// Military time conversion

let input = "07:05:45PM"

let index = input.index(input.endIndex, offsetBy: -2)
let meridian = input.substring(from: index)
let timeStr = input.substring(to: index)

var timeComponents = timeStr.components(separatedBy: ":")
var hour = Int(timeComponents[0])

if meridian == "PM" && ((hour! >= 1) && (hour! <= 11))
{
    hour = hour! + 12
    timeComponents[0] = (hour! < 10) ? "0\(hour!)" : "\(hour!)"
}
else if meridian == "AM" && hour! == 12
{
    timeComponents[0] = "00"
}


let newTime = timeComponents[0]+":"+timeComponents[1]+":"+timeComponents[2]

print(newTime)















