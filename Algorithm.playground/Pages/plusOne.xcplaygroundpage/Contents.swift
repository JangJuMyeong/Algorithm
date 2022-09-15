//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func plusOne(_ digits: [Int]) -> [Int] {

    
    var anwser = digits
    
    anwser[anwser.count - 1] += 1
    
    for i in anwser.indices.reversed() {
        if anwser[i] == 10 {
            if i == 0 {
                anwser[i] = 1
                anwser.append(0)
            } else {
                anwser[i] = 0
                anwser[i - 1] += 1
            }
        }
    }
    
    return anwser
}

let test = [9,9,9]

print(plusOne(test))


