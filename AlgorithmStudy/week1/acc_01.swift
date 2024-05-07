//
//  acc_01.swift
//  AlgorithmStudy
//
//  Created by Mac on 2024/05/07.
//

import Foundation

//https://www.acmicpc.net/problem/9012

func tmpMethodacc_01() {//문제 제출시 이부분만 삭제하고 제출하면됌 > github push용 메소드
    
    let N = Int(readLine()!)!
    
    for _ in 0..<N {
        
        let G = String(readLine()!)
        var added = 0
        for i in G {
            if i == "(" {
                added += 1
            } else if i == ")" {
                added -= 1
                if added < 0 {
                    break
                }
            }
        }
        
        print("\(added == 0 ? "YES" : "NO")")
    }
    
}
