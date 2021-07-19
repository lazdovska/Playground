import UIKit

/* Lesson 4
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */
import Foundation
var myTeam = "Girls"
var resultsOfGames = [String: [String]]()
resultsOfGames["Brooklyn Nets"] =  ["99:89", "109:99"]
resultsOfGames["Dallas Mavericks"] = ["87:89", "104:97"]
resultsOfGames["Washington Wizards"] = ["117:112", "107:122"]
for (teamName, results) in resultsOfGames {
  for score in results {
    print("\(myTeam) against \(teamName) scored - \(score)")
  }
}
/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */
import Foundation
func isEvenNumber(number: Int) -> Bool {
    if(number % 2 == 0){
    return true
  } else {
    return false
  }
}
let integerArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
 for number in integerArray{
   if(isEvenNumber(number: number)){
    print("\(number)  is even")
   }else  {
    print("\(number) is odd")
   }
 }
/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */
func createArray(length: Int) -> [Int] {
  var numbers: [Int] = []
  for _ in 1...length {
    numbers.append(Int.random(in:1...100))
  }
  return numbers
}
let array = createArray(length: 100)
print("\(array)")

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
