import UIKit
/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */
 import Foundation
 enum CalculationType: String {
   case addition = "+" ;
   case substraction = "-"
   case multiplication = "*"
   case division = "/"
 }
/*
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument and SecondNumber, parametrs numberTwo, data type Int ,
 + argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 Than use switch case to calculate and return Int result
    var result = numberOne
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
 */
func calculateResult(numberOne: Int,numberTwo: Int, calculationType: CalculationType) -> Double {
   var result = numberOne
   switch calculationType {
    case .addition:
     result += numberTwo
     case .substraction:
     result -= numberTwo
     case .multiplication:
     result *= numberTwo
     case .division:
        result /= numberTwo
     }
print("Result: \(numberOne) \(calculationType.rawValue) \(numberTwo) = \(result)")
return Double (result)
}
/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/
let numberOne = 12
let numberTwo = 24
calculateResult(numberOne:numberOne, numberTwo:numberTwo, calculationType: .addition)
calculateResult(numberOne:numberOne, numberTwo:numberTwo, calculationType: .substraction)
calculateResult(numberOne:numberOne, numberTwo:numberTwo, calculationType: .multiplication)
calculateResult(numberOne:numberOne, numberTwo:numberTwo, calculationType: .division)

/*
Exercise 2
Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int
 Create func getSpecs() print it with elements provided above
 */
 struct Car{
 var name: String
 var productionYear: Int
 var horsPower: Int
  func getSpecs(){
        print("\(name), \(productionYear), \(horsPower)")
    }
 }
/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
Than run getSpecs() for audiQ7 and audiTT
 */
let audiQ7 = Car (name: "audiQ7", productionYear: 2015, horsPower: 1700)
    audiQ7.getSpecs();
var audiTT = audiQ7
    audiTT.name = "audiTT";
audiTT.getSpecs()
