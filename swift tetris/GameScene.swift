//
//  GameScene.swift
//  swift tetris
//
//  Created by Joseph Mulhern on 6/20/16.
//  Copyright (c) 2016 Joe Mulhern. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered 
        Keeps track of game time*/
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
        /*initializations prepare an instance of a class for use 
        I guess this sets up how the memory will be stored and ish*/
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0, y: 1.0)
        /*Top left corner of screen*/
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: 0, y: 0)
        background.anchorPoint = CGPoint(x: 0, y: 1.0)
        addChild(background)
        /*background is the variable's name, Swift infers its type to be that of
        SKSpriteNode and the keyword let indicates that it can not be re-assigned.
        let is akin to Java's final*/
    }
    
}
