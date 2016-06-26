//
//  Array2D.swift
//  swift tetris
//
//  Created by Joseph Mulhern on 6/20/16.
//  Copyright © 2016 Joe Mulhern. All rights reserved.
//

//import Foundation //comes by default; defines a base layer of objC classes, which we dont need

class Array2D<T> {// <T> allows array to hold any data type
    let columns: Int
    let rows: Int //declaring columns and rows as type int
    var array: Array<T?> //? denotes optional value, includes nil
    
    init(columns: Int, rows: Int){
        self.columns = columns
        self.rows = rows
        array = Array<T?>(count: rows*columns, repeatedValue: nil)
    }
    /*
        enables you to call Array2D[column, row] 
        to get the object at that part of the array
    */
    subscript(column: Int, row: Int) ->T? {
        get {
            return array[(row*columns) + column]
        }
        /*
        // With SPRITEKIT (0,0) is in bottom left corner
        //
        //   _________________
        //   |   |   |   |   |
        // 5 |___|___|___|___|
        //   |   |   |   |   |  X = (2,1)
        // 4 |___|___|___|___|  Row = 2         Rows = 6 (0 1 2 3 4 5)
        //   |   |   |   |   |  Column = 1      Columns = 4 ( 0 1 2 3)
        // 3 |___|___|___|___|
        //   |   |   |   |   |  (row*columns) + column
        // 2 |_8_|_X_|___|___|  2*4 + 1 = 9 = current position
        //   |   |   |   |   |
        // 1 |_4_|_5_|_6_|_7_|
        //   |   |   |   |   |
        // 0 |_0_|_1_|_2_|_3_|
        //     0   1   2   3
        */

        set(newValue) {
            array[(row*columns) + column] = newValue
        }
    }
    
}
