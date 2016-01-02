//
//  graphProtocol.swift
//  graph
//
//  Created by Ray Foote on 1/1/16.
//  Copyright © 2016 fierlion. All rights reserved.
//

import Foundation

protocol Graph {
    var numVertices:Int {get set}
    var numEdges:Int {get set}
    func implementAddEdge(v:Int, w:Int) -> Void
    func implementAddVertex() -> Void
    func getNeighbors(v:Int) -> [Int]
}

extension Graph {
    func getNumVertices() -> Int {
        return self.numVertices
    }
    
    func getNumEdges() -> Int {
        return self.numEdges
    };
    
    mutating func addVertex() -> Void {
        self.implementAddVertex()
        self.numVertices += 1
    }
    
    mutating func addEdge(v:Int, w:Int) -> Void {
        self.implementAddEdge(v, w:w)
        self.numEdges += 1
    }
}
