//
//  Array2D.swift
//  swift tetris
//
//  Created by Joseph Mulhern on 6/20/16.
//  Copyright © 2016 Joe Mulhern. All rights reserved.
//

//import Foundation //comes by default; defines a base layer of objC classes, which we dont need

class Array2D<T> {
    let columns: Int
    let rows: Int //declaring columns and rows as type int
    var array: Array<T?>
    init(columns: Int, rows: Int){
        self.columns = columns
        self.rows = rows
        array = Array<T?>(count: rows*columns, repeatedValue: nil)
    }
    
    subscript(column: Int, row: Int) ->T? {
        get {
            return array[(row*columns) + column]
        }
        set(newValue) {
            array[(row*columns) + column] = newValue
        }
    }
    
    
}
