
var greeting = "Hello, playground"

func test(_ nums: inout [Int], _ k: Int) {
    let rotate = k % nums.count
    
    let moveItem = nums[0...(rotate - 1)]
    let removeArray = nums[rotate-1...]
    
    removeArray += moveItem
    
    nums = removeArray
}

test(
