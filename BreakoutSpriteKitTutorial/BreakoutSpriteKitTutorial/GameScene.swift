//
//  GameScene.swift
//  BreakoutSpriteKitTutorial
//
//  Created by Lidia Chou on 5/5/15.
//  Copyright (c) 2015 Lidia Chou. All rights reserved.
//

import SpriteKit

let BallCategoryName = "ball"
let PaddleCategoryName = "paddle"
let BlockCategoryName = "block"
let BlockNodeCategoryName = "blockNode"

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        super.didMoveToView(view)
        
        //Creating invisible barrier around the screen
        let borderBody = SKPhysicsBody (edgeLoopFromRect: self.frame)
        borderBody.friction = 0
        self.physicsBody = borderBody
        
        physicsWorld.gravity = CGVectorMake(0, 0)
        
        let ball = childNodeWithName(BallCategoryName) as! SKSpriteNode
        ball.physicsBody!.applyImpulse(CGVectorMake(10, -10))
    }
    
    
    
    
}
