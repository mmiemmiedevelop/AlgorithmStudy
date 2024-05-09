//
//  p_04.swift
//  AlgorithmStudy
//
//  Created by Mac on 2024/05/09.
//

import Foundation
//https://www.acmicpc.net/problem/2805

func tmpMethodacc_04() {//문제 제출시 이부분만 삭제하고 제출하면됌 > github push용 메소드
    
    
    let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
    let n = nm[0]
    let m = nm[1]
    let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    let maxArr = arr.max()!
    
    var start = 0
    var end = maxArr
    while start <= end {
        var sum = 0
        let mid = (start + end) / 2
        for i in arr{
            if i - mid < 0{continue}
            sum += (i - mid)
        }
        if sum < m {
            end = mid - 1
        }else{
            start = mid + 1
        }
    }
}
