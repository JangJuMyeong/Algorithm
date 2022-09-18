//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }
    
    var sDic : [Character:Int] = [:]
    var tDic : [Character:Int] = [:]
    
    for i in s {
        if let value = sDic[i] {
            sDic[i] = value + 1
        } else {
            sDic[i] = 1
        }
    }
    
    for j in t {
        if let value = tDic[j] {
            tDic[j] = value + 1
        } else {
            tDic[j] = 1
        }
    }
    
    for (key, value) in sDic {
        if tDic[key] != value {
            return false
            
        }
    }
    
    return true
}
