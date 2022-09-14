//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func plusOne(_ digits: [Int]) -> [Int] {

    var anwser : [Int] = []
    var tempArray = digits
    if let last = tempArray.last {
        if last == 9 {
            for i in tempArray {
                
            }
            tempArray[tempArray.count - 1] = 1
            tempArray.append(0)
            anwser = tempArray
        } else {
            tempArray[tempArray.count - 1] = last + 1
            anwser = tempArray
        }
    }
    
    return anwser
}

let test = [1,9]

print(plusOne(test))


