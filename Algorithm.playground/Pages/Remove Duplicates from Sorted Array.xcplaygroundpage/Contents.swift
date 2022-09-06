import UIKit

var greeting = "Hello, playground"

func removeDuplicates(_ nums: inout [Int]) -> Int {

    nums = Set(nums).sorted()
    
    return nums.count
}

var test = [1,1,2]

removeDuplicates(&test) // 2 nums = [1,2]
