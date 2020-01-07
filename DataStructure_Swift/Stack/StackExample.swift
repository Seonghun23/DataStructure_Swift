//
//  StackExample.swift
//  DataStructure_Swift
//
//  Created by Seonghun Kim on 2020/01/07.
//  Copyright © 2020 Seonghun Kim. All rights reserved.
//

import Foundation

struct StackExample {
    static func pushAndPop() {
        var stack = Stack<Int>()
        stack.push(1)
        stack.push(2)
        stack.push(3)
        stack.push(4)
        print(stack)
        
        if let popedElement = stack.pop() {
            assert(4 == popedElement)
            print("Popped: \(popedElement)")
        }
    }
    
    static func initFromArray() {
        let array = ["A", "B", "C", "D"]
        var stack = Stack(array)
        print(stack)
        stack.pop()
    }
    
    static func initFromArrayLiteral() {
        var stack: Stack = [1.0, 2.0, 3.0, 4.0]
        print(stack)
        stack.pop()
    }
}
