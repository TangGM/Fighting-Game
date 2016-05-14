//
//  Soilder.swift
//  Fighting Game
//
//  Created by Tang on 2016/5/14.
//  Copyright © 2016年 Tang. All rights reserved.
//

import Foundation

class Soilder: Character {
    private var _name = "Soilder"
    var name: String {
        return _name
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attckPwr: attackPwr)
        
        _name = name
    }
    
    
    
}
