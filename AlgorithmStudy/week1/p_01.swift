//
//  p_01.swift
//  AlgorithmStudy
//
//  Created by Mac on 2024/05/06.
//

//https://www.acmicpc.net/problem/10828

import Foundation

struct Stack<Int> {
    private var elements = [Int]()
    
    mutating func push(_ element: Int) {
        return elements.append(element)
    }
    
    mutating func pop() -> Int {
        guard !elements.isEmpty else {
            return -1 as! Int
        }
        return elements.popLast()!
    }

    func size() -> Int {
        return elements.count as! Int
    }
    
    func empty() -> Int{
        guard !elements.isEmpty else {
            return 1 as! Int
        }
        return 0 as! Int
    }
    
    func top() -> Int {
        guard !elements.isEmpty else {
            return -1 as! Int
        }
        return elements.last!
    }
    
    
}

let N = Int(readLine()!)!
var stack = Stack<Int>()

func tmpMethod() {//문제 제출시 이부분만 삭제하고 제출하면됌 > github push용 메소드
    
    for _ in 0..<N {
        let method = String(readLine()!)
        if method.contains("push") {
            let numbers = method.components(separatedBy: CharacterSet.decimalDigits.inverted)
            let onlyNumber = numbers.compactMap { Int($0) }.first
            stack.push(onlyNumber!)
            continue
        }
        
        if method.contains("pop") {
            print("\(stack.pop())")
            continue
        }
        
        if method.contains("size") {
            print("\(stack.size())")
            continue
        }
        
        if method.contains("empty") {
            print("\(stack.empty())")
            continue
        }
        
        if method.contains("top") {
            print("\(stack.top())")
            continue
        }
    }
    
}
