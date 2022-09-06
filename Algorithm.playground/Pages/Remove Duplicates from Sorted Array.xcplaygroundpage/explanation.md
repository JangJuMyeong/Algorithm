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

설명 : 배열의 중복되는 Int를 제거하고 제거된 `Array`를 구하고자 `Set`을 사용하여 중복된 요소를 제거하고 `sorted()`를 통해 정렬 후 변경된 `nums`의 갯수를 반환

고민한 점 : 배열의 중복되는 요소를 제거하고자 순환을 통한 배열 내부 중복 요소를 제거하고자 하였지만 `중복요소 제거`를 집중하여 `Set`을 사용하여 중복 요소를 제거하고자 하였고 내림차순으로 정렬해야 하기떄문에 `sorted()`를 활용하여 정렬후 배열의 개수를 반환할수 있도록 하였습니다.
