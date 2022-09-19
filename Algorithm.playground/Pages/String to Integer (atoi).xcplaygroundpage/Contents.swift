//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func makeUnicodeValue(_ char: Character) -> Int {
    return Int(UnicodeScalar(String(char))!.value)
}

func myAtoi(_ s: String) -> Int {
    var currentNumber = 0
    var isPositive = true
    var index = 0
    
    let sArray = Array(s)
    
    while index < sArray.count && sArray[index] == " " {
        print(sArray[index])
        index += 1
    }
    
    if index < sArray.count && sArray[index] == "-" {
        isPositive = false
        index += 1
    } else if index < sArray.count && sArray[index] == "+"{
        index += 1
    }
    
    for digitIndex in index..<sArray.count {
        let currentChar = sArray[digitIndex]
        guard let parsedNumber = Int(String(currentChar)) else { break }
        
        if currentNumber > Int32.max / 10 || (currentNumber == Int32.max / 10 && parsedNumber > Int32.max % 10) {
            return Int(isPositive ? Int32.max : Int32.max * -1)
        }
        
        currentNumber = currentNumber * 10 + parsedNumber
    }
    
    return isPositive ? currentNumber : currentNumber * -1
}

myAtoi("42")
