//
//  LinkedListExample.swift
//  DataStructure_Swift
//
//  Created by Seonghun Kim on 2019/11/28.
//  Copyright © 2019 Seonghun Kim. All rights reserved.
//

import Foundation

struct LinkedListExample {
    static func node() {
        let node1 = Node(value: 1)
        let node2 = Node(value: 2)
        let node3 = Node(value: 3)
        
        node1.next = node2
        node2.next = node3
        
        print(node1)
    }
    
    static func push() {
        var list = LinkedList<Int>()
        list.push(3)
        list.push(2)
        list.push(1)
        
        print(list)
    }
    
    static func append() {
        var list = LinkedList<Int>()
        list.append(1)
        list.append(2)
        list.append(3)
        
        print(list)
    }
    
    static func insert() {
        var list = LinkedList<Int>()
        list.push(3)
        list.push(2)
        list.push(1)
        print("Before inserting: \(list)")
        var middleNode = list.node(at: 1)!
        for _ in 1...4 {
            middleNode = list.insert(-1, after: middleNode)
        }
        print("After inserting: \(list)")
    }
    
    static func pop() {
        var list = LinkedList<Int>()
        list.push(3)
        list.push(2)
        list.push(1)
        print("Before poping list: \(list)")
        let poppedValue = list.pop()
        print("After popping list: \(list)")
        print("Popped value: " + String(describing: poppedValue))
    }
    
    static func removeLast() {
        var list = LinkedList<Int>()
        list.push(3)
        list.push(2)
        list.push(1)
        
        print("Before removing last node: \(list)")
        let removedValue = list.removeLast()
        
        print("After removing last node: \(list)")
        print("Removed value: " + String(describing: removedValue))
    }
    
    static func removeAfter() {
        var list = LinkedList<Int>()
        list.push(3)
        list.push(2)
        list.push(1)
        
        print("Before removing at particular index: \(list)")
        let index = 1
        let node = list.node(at: index - 1)!
        let removedValue = list.remove(after: node)
        
        print("After removing at index \(index): \(list)")
        print("Removed value: " + String(describing: removedValue))
    }
    
    static func collection() {
        var list = LinkedList<Int>()
        for i in 0...9 {
            list.append(i)
        }
        
        print("List: \(list)")
        print("First element: \(list[list.startIndex])")
        print("Array containing first 3 elements: \(Array(list.prefix(3)))")
        print("Array containing last 3 elements: \(Array(list.suffix(3)))")
        
        let sum = list.reduce(0, +)
        print("Sum of all values: \(sum)")
    }
    
    static func linkedListCOW() {
        var list1 = LinkedList<Int>()
        list1.append(1)
        list1.append(2)
        print("List1 uniquely referenced: \(isKnownUniquelyReferenced(&list1.head))")
        var list2 = list1
        print("List1 uniquely referenced: \(isKnownUniquelyReferenced(&list1.head))")
        print("List1: \(list1)")
        print("List2: \(list2)")
        
        print("After appending 3 to list2")
        list2.append(3)
        print("List1: \(list1)")
        print("List2: \(list2)")
        
        print("Removing middle node on list2")
        if let node = list2.node(at: 0) {
            list2.remove(after: node)
        }
        print("List2: \(list2)")

        print("Before inserting: \(list2)")
        if let node = list2.node(at: 0) {
            list2.insert(10, after: node)
        }
        print("After inserting: \(list2)")
    }
    
    static func sharingNodes() {
        var list1 = LinkedList<Int>()
        (1...3).forEach { list1.append($0) }
        var list2 = list1
        
        print("After push 0` to list2")
        list2.push(0)
        print("List1: \(list1)")
        print("List2: \(list2)")
        
        print("After push 100 to list1")
        list1.push(100)
        print("List1: \(list1)")
        print("List2: \(list2)")
    }
}
