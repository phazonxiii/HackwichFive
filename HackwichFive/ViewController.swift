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
    
    let currentIndex = 0
    let favoriteFoodsArray = ["cheese pizza", "steak", "spaghetti and meatballs", "mochi", "ahi ahi poke"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.topLabel.text = "My favorite foods"
        
        self.bottomLabel.text = favoriteFoodsArray[currentIndex]
    }
    @IBAction func buttonPressed(_ sender: Any) {
    }
    
    
    

}

