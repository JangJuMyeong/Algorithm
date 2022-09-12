import Foundation

var greeting = "Hello, playground"

func rotate(_ nums: inout [Int], _ k: Int) {
    let rotate = k % nums.count
    
    let moveItem = nums[(nums.count - rotate)...]
    let removeArray = nums[0...(nums.count - rotate - 1)]
    
    var totalArray : [Int] = []
    
    totalArray += moveItem
    totalArray += removeArray
    
    nums = totalArray
}
var test = [1,2,3,4,5,6,7]
rotate(&test, 2)
