//
//  ViewController.swift
//  Egg TImer
//
//  Created by Joshua Franklin on 9/3/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 210
    
    @objc func decreaseTimer() {
        
        if time > 0 {
        
        time -= 1
        
        timerLabel.text = String(time)
            
        } else {
            
            timer.invalidate()
        }
        
    }

    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        
        timer.invalidate()
    }
    @IBAction func plusTen(_ sender: Any) {
        
        time += 10
        timerLabel.text = String(time)
    }
    
    @IBAction func minusTen(_ sender: Any) {
        
        if time > 10 {
            
            time -= 10
            
            timerLabel.text = String(time)
            
        }
        
    }
    @IBAction func resetTimer(_ sender: Any) {
        
        time = 210
        
        timerLabel.text = String(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

