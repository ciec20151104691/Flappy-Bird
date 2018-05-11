//
//  GameViewController.swift
//  game
//
//  Created by s20151104691 on 18/5/9.
//  Copyright © 2018年 ltx. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        if let skview = self.view as? SKView {
            if skview.scene == nil {
                //  创建场景
                let lw = skview.bounds.size.height / skview.bounds.size.width
                let screen = GameScene(size:CGSize(width: 320, height: 320 * lw))
                skview.showsFPS = true
                skview.showsNodeCount = true
                skview.showsPhysics = true
                skview.ignoresSiblingOrder = true
                
                screen.scaleMode = .AspectFill
                
                skview.presentScene(screen)
            }
        }
        
        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}

