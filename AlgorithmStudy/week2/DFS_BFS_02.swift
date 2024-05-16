//
//  DFS_BFS_02.swift
//  AlgorithmStudy
//
//  Created by Mac on 2024/05/16.
//https://www.acmicpc.net/problem/2667

import Foundation

func tmpMethod_DFS_BFS_02() {//문제 제출시 이부분만 삭제하고 제출하면됌 > github push용 메소드
    
    //문제 읽는부분
    let N = Int(readLine()!)!
    var graph: [[Character]] = []
    for _ in 0..<N {
        graph.append(readLine()!.map { $0 })
    }
    
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: N), count: N)//방문체크용 false 빈어레이
    let dx = [1, 0, -1, 0]//좌표
    let dy = [0, 1, 0, -1]//좌표
    
    func isValidCoord(y: Int, x: Int) -> Bool {
        return 0..<N ~= y && 0..<N ~= x
    }//좌표가 범위 내에 있는지 확인
    
    var count = 0
    
    func DFS(y: Int, x: Int) {
        visited[y][x] = true
        count += 1
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            //범위내에있는좌표이고 && 방문한적이없고 && 1인경우
            if isValidCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] == "1" {
                DFS(y: ny, x: nx)
            }
        }
    }
    
    var answer: [Int] = []
    
    for y in 0..<N {
        for x in 0..<N {
            if graph[y][x] == "1" && !visited[y][x] {
                count = 0
                DFS(y: y, x: x)
                answer.append(count)
            }
        }
    }
    
    print(answer.count)
    print(answer.sorted(by: <).map { String($0) }.joined(separator: "\n"))
}
