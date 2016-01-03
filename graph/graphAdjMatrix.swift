//
//  graphAdjMatrix.swift
//  graph
//
//  Created by Ray Foote on 1/2/16.
//  Copyright © 2016 fierlion. All rights reserved.
//

import Foundation

class graphAdjMatrix: Graph {
    var numVertices: Int
    var numEdges: Int
    // outgoing edges are 1, otherwise 0
    private var adjMatrix: [[Int]]
    
    init() {
        self.numVertices = 0
        self.numEdges = 0
        self.adjMatrix = []
    }
    
    func implementAddEdge(v:Int, w:Int) {
        self.adjMatrix[v][w] = 1
    }
    
    func implementAddVertex() {
        let v = self.numVertices
        if v > adjMatrix.count {
            var newAdjMatrix: [[Int]] = Array(count: (v*2), repeatedValue: Array(count: (v*2), repeatedValue: 0))
            for i in 0...v-1 {
                for j in 0...v-1 {
                    newAdjMatrix[i][j] = adjMatrix[i][j]
                }
            }
            self.adjMatrix = newAdjMatrix
        }
        for i in 0...adjMatrix[v].count-1 {
            adjMatrix[v][i] = 0
        }
    }
    
    func getNeighbors(v: Int) -> [Int] {
        var neighbors: [Int] = []
        for i in 0...self.adjMatrix[v].count-1 {
            if self.adjMatrix[v][i] > 0 {
                neighbors.append(self.adjMatrix[v][i])
            }
        }
        return neighbors
    }
}