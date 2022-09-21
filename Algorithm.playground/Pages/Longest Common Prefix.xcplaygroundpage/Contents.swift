//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)



func longestCommonPrefix(_ strs: [String]) -> String {

    var answer = ""

    if var shortest = strs.min() {
        while !shortest.isEmpty {
            var isPrefix = true
            for str in strs {
                if !str.hasPrefix(shortest) {
                    isPrefix = false
                }
            }
            
            if !isPrefix {
                shortest.removeLast()
            } else {
                return shortest
            }
        }
    }


    return answer
}


// 모범 답안
func longestCommonPrefix2(_ strs: [String]) -> String {
    guard var prefix = strs.min() else {
        return ""
        
    }
    while prefix.isEmpty == false {
        if strs.allSatisfy({ $0.hasPrefix(prefix) }) {
            break
        }
            prefix.removeLast()
        }
        return prefix
    }


longestCommonPrefix2(["flower","flow","flight"])
