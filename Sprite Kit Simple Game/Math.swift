//
//  Math.swift
//  Sprite Kit Simple Game
//
//  Created by Kryg Tomasz on 12.02.2017.
//  Copyright © 2017 Kryg Tomek. All rights reserved.
//

import UIKit

struct Math {
    
    static func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / 0xFFFFFFFF)
    }
    
    static func random(min: CGFloat, max: CGFloat) -> CGFloat {
        return random() * (max - min) + min
    }
}
