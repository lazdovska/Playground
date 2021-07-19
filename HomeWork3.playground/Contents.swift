import UIKit

/*Lesson 3
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
import Foundation
let depositedAmount:Double = 500000
let periodOfDeposit = 5
let interestRate = 0.005
var deposit:Double = depositedAmount
for yearOfDeposit in 1...periodOfDeposit {
  let profit = deposit * interestRate
  deposit = deposit + profit
  print("Amount of income after \(yearOfDeposit) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
}
/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
 import Foundation
 let integerArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
 for even in integerArray{
    if(even % 2 == 0){
        print("My even numbers are: \(even)")
    }
}
/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */
import Foundation
for counter in 1...100 {
  let number = Int.random(in: 0...10)
  if number == 5 {
    print("Number 5 will be after \(counter) shuffles")
    break
  }
}
/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night bug slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
import Foundation
let electricPost = 10
let dayClimb = 2
let nightClimd = 1
var numberOfDays = 0
var hightClimded = 0
var counter = 0
while (hightClimded <= electricPost) {
    hightClimded += dayClimb
    counter += 1
  if hightClimded >= electricPost {
    print("bug will spend \(counter) days to reach top of the post")
    break
  }
  hightClimded -= nightClimd
}
