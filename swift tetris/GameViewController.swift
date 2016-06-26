//
//  GameViewController.swift
//  swift tetris
//
//  Created by Joseph Mulhern on 6/20/16.
//  Copyright (c) 2016 Joe Mulhern. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    var scene: GameScene!//! means we will assign type at some point
    var swiftris:Swiftris!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configure the view.
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
        /*The as! operator is a forced downcast. The view object is of type SKView,
         but before downcasting, our code treated it like a basic UIView. Without downcasting,
         we are unable to access SKView methods and properties, such as presentScene(SKScene).*/
        
        //Create and configure the scene.
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        scene.tick = didTick
        
        swiftris = Swiftris()
        swiftris.beginGame()
        
        //present the scene
        skView.presentScene(scene)
        
        scene.addPreviewShapeToScene(swiftris.nextShape!) {
            self.swiftris.nextShape?.moveTo(StartingColumn, row: StartingRow)
            self.scene.movePreviewShape(self.swiftris.nextShape!) {
                let nextShapes = self.swiftris.newShape()
                self.scene.startTicking()
                self.scene.addPreviewShapeToScene(nextShapes.nextShape!) {}
            }
        }
    }

      override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func didTick() {
        swiftris.fallingShape?.lowerShapeByOneRow()
        scene.redrawShape(swiftris.fallingShape!, completion: {})
    }
}
