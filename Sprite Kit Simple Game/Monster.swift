//
//  Monster.swift
//  Sprite Kit Simple Game
//
//  Created by Kryg Tomasz on 12.02.2017.
//  Copyright © 2017 Kryg Tomek. All rights reserved.
//

import SpriteKit

class Monster: SKSpriteNode {

    init() {
        
        let texture = SKTexture(imageNamed: "monster")
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
}
