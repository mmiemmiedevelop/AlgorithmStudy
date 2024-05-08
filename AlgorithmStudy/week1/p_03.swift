//
//  p_03.swift
//  AlgorithmStudy
//
//  Created by Mac on 2024/05/08.
//

import Foundation

//https://school.programmers.co.kr/learn/courses/30/lessons/42583?language=swift

func solutioni(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var array = Array(repeating: 0, count: bridge_length)//가상의 다리 생성(bridge_length만큼)
    var time = 0
    var truckArr = truck_weights
    var currentWeight = 0
    
    while !(array.isEmpty) {
        time += 1
        currentWeight -= array.removeFirst()//다리첫번째(지난트럭)에서 무게 빼기 => 지나갔으므로
        
        if let nowTruck = truckArr.first {
            if nowTruck + currentWeight <= weight {
                array.append(nowTruck)
                currentWeight += truckArr.removeFirst()//무게계산 => 지나간 트럭무게
            } else {
                array.append(0)
            }
        }
    }
    
    
    return time
}
