//
//  ViewController.swift
//  HackwichFive
//
//  Created by Clifford Bailey on 2202/24/.
//  Copyright © 2022 Cliff Bailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var topLabel: UILabel!
    @IBOutlet var bottomLabel: UILabel!
    @IBOutlet var buttonLabel: UIButton!
    
    var currentIndex = 0
    let favoriteFoodsArray = ["cheese pizza", "steak", "spaghetti and meatballs", "mochi", "ahi ahi poke"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.topLabel.text = "My favorite foods"
        
        self.bottomLabel.text = favoriteFoodsArray[currentIndex]
    }
    @IBAction func buttonPressed(_ sender: Any) {
        if self.currentIndex < self.favoriteFoodsArray.count
        {
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            currentIndex += 1
        }
        else
        {
            print("button has been disabled")
            (buttonLabel as! UIButton).isEnabled=false
        }
    }
    
    
    
    

}

