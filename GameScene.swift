//
//  GameScene.swift
//  game
//
//  Created by s20151104691 on 18/5/9.
//  Copyright © 2018年 ltx. All rights reserved.
//

import SpriteKit

import SpriteKit

enum picture: CGFloat {
    case background
    case prospects
    case role
}


class GameScene: SKScene {
    
    let world = SKNode()
    var startpoint: CGFloat = 0
    var worldheight: CGFloat = 0
    
    
    override func didMoveToView(view: SKView) {
        addChild(world)
        makebackground()
        makeprospects()
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    }
    
    override func update(currentTime: CFTimeInterval) {
        
    }
}

