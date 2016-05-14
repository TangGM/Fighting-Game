//
//  Erc.swift
//  Fighting Game
//
//  Created by Tang on 2016/5/14.
//  Copyright © 2016年 Tang. All rights reserved.
//

import Foundation

class Erc: Character {
    
    private var _name = "Erc"
    var name: String {
        get {
            return _name
        }
    }
    convenience init (name: String ,hp: Int, attckPwr: Int) {
        self.init(startingHp: hp, attckPwr: attckPwr)
        
        _name = name
    }
    
    var loot: [String] {
        return ["小菜一碟", "滷味一碗", "珍奶一杯"]
    }
    
    func droploot() -> String? {
    
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
    
}