//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func strStr(_ haystack: String, _ needle: String) -> Int {
    let sArray = Array(haystack)
   
    if haystack.count < needle.count {
        return -1
    }
    
    for i in 0..<sArray.count {
        if sArray[i] == needle.first {
            if needle.count + i <= haystack.count && String(sArray[i..<needle.count + i]) == needle {
                return i
            }
        }
    }

    return -1
}

strStr("mississippi","issipi")
