//
//  p_02.swift
//  AlgorithmStudy
//
//  Created by Mac on 2024/05/07.
//

//https://www.acmicpc.net/problem/1158

import Foundation

func tmpMethodP_02() {//문제 제출시 이부분만 삭제하고 제출하면됌 > github push용 메소드
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0]
    let k = input[1]
    var array = [Int](1...n)
    var answer: [Int] = []
    var index = 0
    
    for _ in 0..<n {
        index = (index + k - 1) % array.count
        answer.append(array.remove(at: index))
    }
    
    print("<\(answer.map { String($0) }.joined(separator: ", "))>")
}
