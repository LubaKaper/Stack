//
//  main.swift
//  Stack
//
//  Created by Liubov Kaper  on 10/6/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import Foundation

// implement a Stack using an array

// functions and properties
//pop, peek, push, isEmpty, count

// Stack is generic
// Stack is an abstract data tyoe
// heap is an abstract data type, that alloes for constnt lookup for s min or mac value

struct Stack<T> { //Srtckts are immutable, thats why funcs are mutable
// data structure
    // private, public, internal => access control, modifiers
    private var elements = [T]()
    
    public var peek: T? {
        return elements.last
    }
    
    // stored, computed
    public var isEmpty: Bool {
        return elements.isEmpty // compted property
    }
    
    public var count: Int {
        return elements.count
    }
    
    public mutating func push(_ element: T) {
        elements.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> T? {
        return elements.popLast()
    }
    
}

var numbers = Stack<Int>()
numbers.push(10)
numbers.push(9)
numbers.push(45)

print(numbers.count)

let removedValue = numbers.pop() // discard result (line 42)

print(removedValue ?? 999)



// implement a Stack using an LinkedList
//1. Create Node Class that uses a double node

class DLNode<T> {
    // node has at minimum value and next
    var value: T // no value exist
    // by default var is strong
    // cant have 2 strong references to Node
    var next: DLNode<T>? // 8 for example
    weak var previous: DLNode<T>?
    init(_ value: T) {
        self.value = value // taking 8 and putting inside our value(line 67)
    }
}

// 2. Create LinkedList
// at minimum implement following properties and funcs:
// count, isEmpty, peek(properties)
//append, removeLast (functions)

struct LinkedList<T> {
    private var head: DLNode<T>?
    private var tail: DLNode<T>?
    
    
    // could only get (retrieve) the value externally
    // can mutate the value internally
    private(set) public var count = 0
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    // 1->2->3->nil
    public var peek: T? {
        return tail?.value
    }
}

// implement a stack using LinkedList
