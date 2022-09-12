import Foundation

var greeting = "Hello, playground"

func singleNumber(_ nums: [Int]) -> Int {
    
    /* 첫 코드 2468ms 말도안되는 값....
    if nums.count == 1 {
        return nums.first!
    } else {
        
        var tempArray = nums
        while true {
            if tempArray.count == 1 {
                return tempArray.first!
            } else {
                let checkItem = tempArray.first!
                let checkArray = tempArray[1...]
                if checkArray.contains(checkItem) {
                    tempArray = tempArray.filter{ $0 != checkItem }
                } else {
                    return checkItem
                }
            }
        }
        
    }*/
    let tempArray = nums
    
    for num in nums {
        if tempArray.filter{ $0 == num }.count == 1 {
            return num
        }
    }
    
    return 0

}

let test = [2,2,1,3,4,5,1,4,5]

singleNumber(test)
