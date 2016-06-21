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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configure the view.
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
        
        //Create and configure the scene.
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        //present the scene
        skView.presentScene(scene)
        
        /*The as! operator is a forced downcast. The view object is of type SKView, 
        but before downcasting, our code treated it like a basic UIView. Without downcasting, 
        we are unable to access SKView methods and properties, such as presentScene(SKScene).*/
    }

      override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
