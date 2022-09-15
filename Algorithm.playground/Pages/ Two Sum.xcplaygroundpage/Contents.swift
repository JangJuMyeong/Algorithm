//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var answer : [Int] = []
    var dic : [Int:Int] = [:]
    
    for (index, item) in nums.enumerated(){
        dic[item] = index
    }
    
    for i in 0..<nums.count {
        let complement = target - nums[i]
        let index = dic[complement]
        if index != nil && index != i {
            return [i,index!]
        }
        
    }
    
    return answer
}


print("hi")

