//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
UnicodeScalar("z")

Int("h")

func makeUnicodeValue(_ char: Character) -> Int {
    return Int(UnicodeScalar(String(char))!.value)
}

func isPalindrome2(_ s: String) -> Bool {
    if s.isEmpty {
        return true
    }
    
    var lowercase = s.lowercased()
    
    var filterString = lowercase.filter{ (makeUnicodeValue($0) > 96 && makeUnicodeValue($0) < 122) || (makeUnicodeValue($0) > 47 && makeUnicodeValue($0) < 58)
    }
    
    
    for i in 0..<filterString.count / 2 {
        var start = filterString.index(filterString.startIndex,offsetBy: i)
        var symmetry = filterString.index(filterString.startIndex, offsetBy: filterString.count - i - 1)
        print(filterString[start] , filterString[symmetry])
        if filterString[start] != filterString[symmetry] {
            return false
        }
    }
    
    return true
}

func isPalindrome(_ s: String) -> Bool {
    var i = 0, j = s.count - 1
    var tempArray = Array(s.lowercased())
    
    while i < j {
        while i < j && !tempArray[i].isAlphaNumeric {
            i += 1
        }
        
        while i < j && !tempArray[j].isAlphaNumeric {
            j -= 1
        }
        
        if tempArray[i] != tempArray[j] {
            return false
        }
        
        i += 1
        j -= 1
    }
    
    return true
}

extension Character {
    var isAlphaNumeric: Bool {
        return isLetter || isNumber
    }
}

isPalindrome("race a car")


