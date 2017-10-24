//
//  GameViewController.swift
//  test1
//
//  Created by Nick van der Boor on 22-10-17.
//  Copyright © 2017 Nick van der Boor. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = LevelOne(size: view.bounds.size)
        let skView = view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .resizeFill
        skView.presentScene(scene)
        let wallToUse = Wall()
        scene.getField(locationHeightInt: 5, locationWidthInt: 3).setObjectOnField(givenObject: wallToUse)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
