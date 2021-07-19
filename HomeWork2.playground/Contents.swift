import UIKit
/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var number1: Float = 5.35
var number2: Float = 39.8
var number3 = (number1+number2)
//print("The result is \(number3)")
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */
 var numberOne = 55
 var numberTwo = 40
 let result = (numberOne/numberTwo)
 let remainder = (numberOne % numberTwo)
 //print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(remainder).")
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
var qty = 9
let price1 = 1000
let price2 = 900
let price3 = 850
let totalSum1 = (qty*price1)
let totalSum2 = (qty*price2)
let totalSum3 = (qty*price3)
if qty >= 5 && qty < 10 {
    print("new: \(qty) MacBook Pro with the price of: \(price2) EUR, will cost you: \(totalSum2) Eur")
} else if qty >= 10 {
    print("new: \(qty) MacBook Pro with the price of: \(price3) EUR, will cost you: \(totalSum3) Eur")
} else {
    print("new: \(qty) MacBook Pro with the price of: \(price1) EUR, will cost you: \(totalSum1) Eur")
}
/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
let userInputAge:String = "33a"
var convertToInt = Int(userInputAge)
if convertToInt == nil {
    print("Unexpectedly found nil while unwrapping an Optional value!")
} else { print (userInputAge)
}
/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
let currentYear:Float = 2021
let birthYear:Float = 1988
let totalYearsFromBirth:Float = (currentYear - birthYear)
let currentMonth:Float = 7
let birthMonth:Float = 1
let monthsInOneYear:Float = 12
let monthsThisYear:Float = (currentMonth - birthMonth)
let fullMonthsInFirstYear:Float = (monthsInOneYear - birthMonth)
let totalMonthFromBirth = ((totalYearsFromBirth - 2) * monthsInOneYear) + (monthsThisYear) + (fullMonthsInFirstYear)
let daysInYear:Float = 365.25
let currentDay = 8
let birthDay = 27
let daysInOneMonth = (daysInYear / monthsInOneYear)
let daysThisYear = monthsThisYear * daysInOneMonth
let daysFirstYear = fullMonthsInFirstYear * daysInOneMonth
let totalDaysFromBirth = (totalMonthFromBirth * daysInOneMonth) + (daysThisYear) + (daysFirstYear)
print("Total years: \(totalYearsFromBirth), total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
var quarterOfYear = ""
switch birthMonth {
case 1...3 :
    quarterOfYear = "first"
case 4...6 :
    quarterOfYear = "second"
case 7...9 :
    quarterOfYear = "third"
case 10...12 :
    quarterOfYear = "fourth"
    print("I was born in the fourth quarter")
default:
    break
}
print("I was born in the \(quarterOfYear) quarter")
