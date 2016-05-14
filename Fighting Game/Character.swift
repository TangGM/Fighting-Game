//
//  Character.swift
//  Fighting Game
//
//  Created by Tang on 2015/12/20.
//  Copyright © 2015年 Tang. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp = 100
    private var _attackPwr: Int = 70
    
    var hp: Int {
        return _hp
    }
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    
    init(startingHp: Int, attckPwr: Int) {
        self._hp = startingHp
        self._attackPwr = attckPwr
    }
    
    func attempAttack(attckPwr: Int) -> Bool {
        
        self._hp -= attckPwr
        print ("suc")
        return true
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    
    
}

