### LeetCode 

#### Remove Duplicates from Sorted Array

https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/727/

내 코드 

```swift 

func removeDuplicates(_ nums: inout [Int]) -> Int {

    nums = Set(nums).sorted()
    
    return nums.count
}

var test = [1,1,2]

removeDuplicates(&test) // 2 nums = [1,2]
```

설명 : 배열의 중복되는 Int를 제거하고 제거된 `Array`를 구하고자 `Set`을 사용하여 중복된 요소를 제거하고 `sorted()`를 통해 정렬을 하였습니다. 그리고 변경된 `nums`의 갯수를 반환해 주게 됩니다.
