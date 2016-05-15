//
//  ViewController.swift
//  Fighting Game
//
//  Created by Tang on 2015/12/20.
//  Copyright © 2015年 Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var soilderImg: UIImageView!
    @IBOutlet var ercImg: UIImageView!
    @IBOutlet var meassage: UILabel! // typp
    
    
    var p1: Soilder!
    var p2: Erc!


    override func viewDidLoad() {
        super.viewDidLoad()

        p1 = Soilder(name: "Tang", hp: 220, attackPwr: 70)
        p2 = Erc(name: "Brother", hp: 170, attckPwr: 90)
        meassage.text = "\(p2.name) VS \(p1.name)"
    }


    
    @IBAction func p1AttackTapped(sender: AnyObject) {
        
        
        if p2.attempAttack(p1.attackPwr) {
            meassage.text = "Attacked \(p2.name) for \(p1.attackPwr) HP"
            meassage.text = "\(p2.name) REMAINS \(p2.hp) HP"
           
        }
        
        if !p2.isAlive {
            ercImg.hidden = true
            meassage.text = "SOIDLER WINS"
            
        }

        
    }

    @IBAction func p2AttackTapped(sender: AnyObject) {
        
        
        if p1.attempAttack(p2.attackPwr) {
            meassage.text = "Attacked \(p1.name) for \(p2.attackPwr) HP"
            meassage.text = "\(p1.name) REMAINS \(p1.hp) HP"
//            p1AttackTapped.enabled = false
        }
        
        if !p1.isAlive {
            soilderImg.hidden = true
            meassage.text = "ERC WINS"
        }
        
        
    }

    


}

