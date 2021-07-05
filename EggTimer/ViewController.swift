//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        switch sender.currentTitle {
        
        case "Soft": print(softTime); break
        case "Medium": print(mediumTime); break
        case "Hard": print(hardTime); break
        default: break
        
        }
        
    }
    
    
    
}
