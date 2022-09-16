//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func rotate(_ matrix: inout [[Int]]) {
    
    var tempArray = matrix
    
    for i in matrix.indices.reversed() {
        for j in 0..<matrix[i].count {
            let index = matrix.count - i - 1
            matrix[j][index] = tempArray[i][j]
        }
    }
}

var test =  [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]

rotate(&test)
    
