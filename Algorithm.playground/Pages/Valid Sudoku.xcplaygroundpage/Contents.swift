//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func isValidSudoku(_ board: [[Character]]) -> Bool {
    var setArray = Set<String>()
    
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            let currentChar = board[i][j]
            
            if currentChar == "." {
                continue
            }
            let row = "\(currentChar),\(i),"
            if !setArray.contains(row) {
                setArray.insert(row)
            } else {
                return false
            }
            
            let colum = "\(currentChar),\(j)"
            if !setArray.contains(colum) {
                setArray.insert(colum)
            } else {
                return false
            }
            
            let box = "\(currentChar),\(i/3),\(j/3)"
            if !setArray.contains(box) {
                setArray.insert(box)
            } else {
                return false
            }
        }
    }
    
    return true
    
}
