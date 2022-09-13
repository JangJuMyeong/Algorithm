
import Foundation

var greeting = "Hello, playground"

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    
    var result: [Int] = []
    var arr: [Int] = []
    
    arr = nums1
    for num in nums2 {
        if arr.contains(num) {
            result.append(num)
            arr.remove(at: arr.firstIndex(of: num)!)
        }
    }
    
    return result
}
