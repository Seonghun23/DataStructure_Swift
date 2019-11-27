//
//  LinkedList.swift
//  DataStructure_Swift
//
//  Created by Seonghun Kim on 2019/11/27.
//  Copyright © 2019 Seonghun Kim. All rights reserved.
//

import Foundation

public struct LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        return head == nil
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "Empty list"
        }
        return String(describing: head)
    }
}

extension LinkedList {
    // 리스트의 맨 앞에 값을 추가
    public mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
}

extension LinkedList {
    // 리스트의 맨 끝에 값을 추가
}

extension LinkedList {
    // 리스트의 특정 노드 뒤에 값을 추가
}
