//
//  graphAdjList.swift
//  graph
//
//  Created by Ray Foote on 1/2/16.
//  Copyright © 2016 fierlion. All rights reserved.
//

import Foundation

class AdjList: Graph {
    var numVertices: Int
    var numEdges: Int
    // list of outgoing edges
    var adjListDict:[Int: [Int]]
    
    init() {
        self.numVertices = 0
        self.numEdges = 0
        self.adjListDict = [Int: [Int]]()
    }
    
    func implementAddEdge(v: Int, w: Int) {
        if self.adjListDict[v] != nil {
            self.adjListDict[v]!.append(w)
        }
    }
    
    func implementAddVertex() {
        let v = self.numVertices
        var neighbors:[Int] = [Int]()
        adjListDict[v] = neighbors
    }
    
    func getNeighbors(v: Int) -> [Int] {
        var neighbors: [Int] = [Int]()
        if self.adjListDict[v] != nil {
            for i in 0...self.adjListDict[v]!.count {
                neighbors.append(self.adjListDict[v]![i])
            }
        }
        return neighbors
    }    
}
