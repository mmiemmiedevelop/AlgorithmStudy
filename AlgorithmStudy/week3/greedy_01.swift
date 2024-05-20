//
//  greedy_01.swift
//  AlgorithmStudy
//
//  Created by Mac on 2024/05/20.
//https://www.acmicpc.net/problem/11399

import Foundation

func tmpMethod_greedy_01() {//문제 제출시 이부분만 삭제하고 제출하면됌 > github push용 메소드
    
    let count = Int(readLine()!)!
    let timeArr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    
    var returnValue = 0
    var waitedTime = 0
    
    for i in 0..<count {
        waitedTime += timeArr[i]
        returnValue += waitedTime
    }
    
    print(returnValue)
}
