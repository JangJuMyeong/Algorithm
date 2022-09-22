//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

//: [Next](@next)

func deleteNode(_ node: ListNode?) {
    if let n = node, let next = n.next {
        n.val = next.val
        n.next = next.next
    }
}
