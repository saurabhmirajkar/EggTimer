//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        
        secondsPassed = 0
        titleLabel.text = "Wait for \(hardness) egg 🥚"
        progressBar.progress = 0
        
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [unowned self] (Timer) in
            if secondsPassed < totalTime {
                secondsPassed += 1
                let progressPercentage = Float(secondsPassed) / Float(totalTime)
                DispatchQueue.main.async {
                    self.progressBar.progress = progressPercentage
                }
            } else {
                DispatchQueue.main.async {
                    self.titleLabel.text = "Ready to eat"
                }
                timer.invalidate()
            }
        }
        
    }
    
    
}
