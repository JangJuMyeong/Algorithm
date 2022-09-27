//: [Previous](@previous)

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

var greeting = "Hello, playground"

class Solution {
    // ListNode 뒤집기
    func reverseLinkedList(_ node: ListNode) -> ListNode? {
        var prevNode: ListNode? = nil
        var headNode: ListNode? = node
        
        while headNode != nil {
//            2. 다음 노드는 역전해주기 전에 저장해둔다.
            let nextNode = headNode?.next
            
//            1. next 노드를 역전해준다.
            headNode?.next = prevNode
            
//            3. return값을 위해서 prevNode값을 저장해두고, headNode는 미리 저장해둔 nextNode로 치환한다
            prevNode = headNode
            headNode = nextNode
        }
        
        return prevNode
    }
    //https://www.youtube.com/watch?time_continue=160&v=Msv0D5zwmHQ&feature=emb_title 참조
}
