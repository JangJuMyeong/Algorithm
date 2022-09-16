//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func reverse(_ x: Int) -> Int {
    var intToString = String(x).reversed()
    var value = String(intToString)
    
    //음수의 경우 뒤에 -가 붙는다
    if x < 0 {
        value.removeLast()
        value.insert("-", at: value.startIndex)
    }
    //Int32 체크
    if let answer = Int32(value) {
        return Int(answer)
    }
    return 0
}

reverse(-123456)
