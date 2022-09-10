
import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    return Set(nums).count != nums.count
}

let test = [1,2,3,1]

containsDuplicate(test)
