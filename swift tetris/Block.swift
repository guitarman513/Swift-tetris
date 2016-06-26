//
//  Block.swift
//  swift tetris
//
//  Created by Joseph Mulhern on 6/25/16.
//  Copyright © 2016 Joe Mulhern. All rights reserved.
//


import SpriteKit

let NumberOfColors: UInt32 = 6 //number of colors Swiftris supports

enum BlockColor: Int, CustomStringConvertible {//enumeration is type int and implements the CustomStringConvertible protocol
    
    case Blue = 0, Orange, Purple, Red, Teal, Yellow//blue is 0 and yellow is 5
    
    var SpriteName: String {
        switch self {
        case .Blue:
            return "blue"
        case .Orange:
            return "orange"
        case .Purple:
            return "purple"
        case .Red:
            return "red"
        case .Teal:
            return "teal"
        case .Yellow:
            return "yellow"
        }
    }
    
    var description: String {
        return self.SpriteName
    }
    
    static func random() -> BlockColor {
        return BlockColor(rawValue:Int(arc4random_uniform(NumberOfColors)))!
    }
    
}

class Block: Hashable, CustomStringConvertible {
    //constants
    let color: BlockColor
    //properties
    var column: Int
    var row: Int
    var sprite: SKSpriteNode?
    
    var spriteName: String {
        return color.SpriteName
    }
    
    var hashValue: Int {
        return self.column ^ self.row
    }
    
    var description: String {
        return "\(color): [\(column), \(row)]"
    }
    
    init(column:Int, row:Int, color:BlockColor) {
        self.column = column
        self.row = row
        self.color = color
    }
}

func ==(lhs: Block, rhs: Block) -> Bool {
    return lhs.column == rhs.column && lhs.row == rhs.row && lhs.color.rawValue == rhs.color.rawValue
}
