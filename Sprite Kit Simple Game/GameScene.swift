//
//  GameScene.swift
//  Sprite Kit Simple Game
//
//  Created by Kryg Tomasz on 11.02.2017.
//  Copyright © 2017 Kryg Tomek. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let player = SKSpriteNode(imageNamed: "player")
    
    override func didMove(to view: SKView) {
        
        backgroundColor = SKColor.white
        player.position = CGPoint(x: size.width * 0.1, y: size.height * 0.5)
        addChild(player)
        
        generateMonstersContinously()
        
    }
    
    func generateMonstersContinously() {
        
        let sequence = SKAction.sequence([SKAction.run(addMonster),
                                          SKAction.wait(forDuration: 0.01)])
        run(SKAction.repeatForever(sequence))
        
    }
    
    func addMonster() {
        
        let monster = Monster()
        initMonsterBehavior(for: monster)
        addChild(monster)

        
    }
    
    func initMonsterBehavior(for monster: SKSpriteNode) {
        
        let yPosition = Math.random(min: monster.size.height/2, max: size.height - monster.size.height/2)
        monster.position = CGPoint(x: size.width + monster.size.width, y: yPosition)
        let duration = Math.random(min: CGFloat(2.0), max: CGFloat(4.0))
        let actionMove = SKAction.move(to: CGPoint(x: -monster.size.width/2, y: yPosition), duration: TimeInterval(duration))
        let actionMoveDone = SKAction.removeFromParent()
        monster.run(SKAction.sequence([actionMove, actionMoveDone]))
        
    }
    
}
