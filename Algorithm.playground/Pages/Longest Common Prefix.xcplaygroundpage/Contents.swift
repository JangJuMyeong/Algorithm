//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)



func longestCommonPrefix2(_ strs: [String]) -> String {
    
    var answer = ""
    
    if let shortest = strs.min() {

        for i in 1...shortest.count {
            var longetPrefix = ""
            
            let prefix = shortest.prefix(i)
            
            print(prefix)
            
            for str in strs {
                if str.hasPrefix(prefix) {
                    longetPrefix = prefix
                } else {
                    longetPrefix = ""
                }
            }

            if !longetPrefix.isEmpty {
                answer = longetPrefix
            }
        }
    }
    
    
    return answer
}

func longestCommonPrefix(_ strs: [String]) -> String {
        guard let shortestString = strs.min() else {
            return ""
        }
        var longest = ""
        for i in 0...shortestString.count {
            let prefix = shortestString.prefix(i)
            var flag = true
    
            for str in strs {
                flag = flag && str.hasPrefix(prefix)
            }
            if flag {
                longest = String(prefix)
            } else {
                return longest
            }
        }
        return longest
    }

longestCommonPrefix(["flower","flow","flight"])
