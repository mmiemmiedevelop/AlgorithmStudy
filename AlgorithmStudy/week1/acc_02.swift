//
//  acc_02.swift
//  AlgorithmStudy
//
//  Created by Mac on 2024/05/07.
//https://www.acmicpc.net/problem/9093

import Foundation

func tmpMethodacc_02() {//문제 제출시 이부분만 삭제하고 제출하면됌 > github push용 메소드
    
    struct Stack<T> {
        private var elements = [T]()
        
        mutating func push(_ element: T) {
            elements.append(element)
        }
        
        mutating func pop() -> T? {
            return elements.popLast()
        }
        
        func isEmpty() -> Bool {
            return elements.isEmpty
        }
    }
    
    let N = Int(readLine()!)!
    
    var stack = Stack<Character>()
    
    for _ in 0..<N {
        var resultSentence = "" // 각 입력마다 결과를 초기화
        
        let sentence = readLine()!
        for char in sentence {
            if char == " " { // 공백일 때
                while !stack.isEmpty() {
                    resultSentence.append(stack.pop()!) // 스택에서 문자를 꺼내어 역순으로 추가
                }
                resultSentence.append(" ") // 공백 추가
            } else {
                stack.push(char) // 스택에 문자 추가
            }
        }
        
        // 마지막 단어 처리
        while !stack.isEmpty() {
            resultSentence.append(stack.pop()!) // 스택에서 문자를 꺼내어 역순으로 추가
        }
        
        print(resultSentence)
    }
}
