//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//시간 초과
func firstUniqChar(_ s: String) -> Int {
    
    for (index, char) in s.enumerated() {
        var stringArray = s
        let i = stringArray.index(stringArray.startIndex, offsetBy: index)
        stringArray.remove(at: i)
        if !stringArray.contains(char) {
            return index
        }
    }
    
    return -1
}

//딕셔너리를 잘 활용해보자
func firstUniqChar2(_ s: String) -> Int {

    var dictionary: [Character: Int] = [:]

    for (idx, char) in s.enumerated() {
        if dictionary[char] != nil {
            dictionary[char] = -1
        } else {
            dictionary[char] = idx
        }
    }

    for (idx, char) in s.enumerated() {
        if dictionary[char] != -1 {
            return idx
        }
    }

    return -1;
}

firstUniqChar("loveleetcode")
