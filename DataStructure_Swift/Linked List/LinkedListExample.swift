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
}
