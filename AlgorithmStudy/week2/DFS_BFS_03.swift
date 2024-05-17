//
//  DFS_BFS_03.swift
//  AlgorithmStudy
//
//  Created by Mac on 2024/05/17.
//https://www.acmicpc.net/problem/11724

import Foundation

func tmpMethod_DFS_BFS_03() {//문제 제출시 이부분만 삭제하고 제출하면됌 > github push용 메소드
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0], M = input[1]//N은 정점의 갯수, M은 간선의 갯수
    
    //var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: N + 1)
    var graph: [[Int]] = []//별차이없나...?일단 내꺼살리고
    
    for _ in 0..<M {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let a = input[0]
        let b = input[1]
        graph[a].append(b)
        graph[b].append(a)
    }
    
    var visited = [Bool](repeating: false, count: N + 1)
    
    
    func DFS(node: Int) {
        visited[node] = true
        
        for nextNode in graph[node] {
            if !visited[nextNode] {
                visited[nextNode] = true
                DFS(node: nextNode)
            }
        }
    }
    //여기까지는 기존 백준 DFS코드랑 같음
    
    var count = 0
    
    //문제실질코드
    for i in 1...N {
        if !visited[i] {
            count += 1
            DFS(node: i)
        }
    }
    
    print(count)
    
    
    
    
}
