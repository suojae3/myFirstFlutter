import Foundation

class Calculator {
    
    func plus (_ firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
    
    func minus (_ firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
    
    func multiply (_ firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
    
    func divide (_ firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
    
    func remain (_ firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber % secondNumber
    }
}


let calculator = Calculator()
let addResult = calculator.plus
let subtractResult = calculator.minus
let multiplyResult = calculator.multiply
let divideResult = calculator.divide
let remainderResult = calculator.remain

print("addResult : \(addResult(3, 3))")
print("subtractResult : \(subtractResult(3, 3))")
print("multiplyResult : \(multiplyResult(3, 3))")
print("divideResult : \(divideResult(3, 3))")
print("remainderResult : \(remainderResult(3, 3))")


