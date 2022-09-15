//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func moveZeroes(_ nums: inout [Int]) {
    
    var tempArray = nums.filter{ $0 != 0 }
    var zeroArray = nums.filter{ $0 == 0 }
    
    var answer : [Int] = []
    
    answer += tempArray
    answer += zeroArray
    
    nums = answer
}
