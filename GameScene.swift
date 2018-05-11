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
    let role = SKSpriteNode(imageNamed: "Bird0")
    var lasttime:NSTimeInterval = 0
    var dt:NSTimeInterval = 0
    
    
    override func didMoveToView(view: SKView) {
        addChild(world)
        makebackground()
        makeprospects()
        makerole()
    }
    
    // MARK: 设置的相关方法
    
    func makebackground() {
        let background = SKSpriteNode(imageNamed: "Background")
        background.anchorPoint = CGPoint(x: 0.5, y: 1.0)
        background.position = CGPoint(x: size.width/2, y: size.height)
        background.zPosition = picture.background.rawValue
        world.addChild(background)
        
        startpoint = size.height - background.size.height
        worldheight = background.size.height
        
    }
    
    func makerole(){
        role.position = CGPoint(x:size.width * 0.2,y:worldheight * 0.4 + startpoint)
        role.zPosition = picture.role.rawValue
        world.addChild(role)
    }
    
    func makeprospects() {
        let prospects = SKSpriteNode(imageNamed: "Ground")
        prospects.anchorPoint = CGPoint(x: 0, y: 1.0)
        prospects.position = CGPoint(x: 0, y: startpoint)
        prospects.zPosition = picture.prospects.rawValue
        world.addChild(prospects)
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    }
    
    override func update(now: CFTimeInterval) {
        if lasttime>0
        {
            dt = now - lasttime
        }
        else
        {
            dt = 0
        }
        lasttime = now
    }
}

