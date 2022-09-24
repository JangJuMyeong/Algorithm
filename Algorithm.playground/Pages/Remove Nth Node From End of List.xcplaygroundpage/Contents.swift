//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var count = 0
        var tempNode = head
        while tempNode != nil {
            count += 1
            tempNode = tempNode?.next
        }
        
        let index = count - n
        
        if index == 0 { return head?.next }
        
        tempNode = head
        
        for _ in 0..<index - 1 {
            tempNode = tempNode?.next
        }
        
        tempNode?.next = tempNode?.next?.next
        
        return head
    }
}
