//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func reverse(_ x: Int) -> Int {
    var stringToInt = String(x).reversed()
    var value = String(stringToInt)
    
    //음수의 경우 뒤에 -가 붙는다
    if x < 0 {
        value.removeLast()
        value.insert("-", at: value.startIndex)
    }
    //Int32 체크
    if let answer = Int32(value) {
        return answer
    }
    return 0
}

reverse(-123456)
