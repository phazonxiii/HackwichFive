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
        // so long as the current index is less than the total items in the array, the button will remain enabled
        if self.currentIndex <
            self.favoriteFoodsArray.count
        {
            // Setting the name of the item into the bottom label starting from the current item
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            // Setting the text of the button to "NEXT"
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            // Telling the label to change to the next item in the array when the button is pressed
            currentIndex += 1
        }
        else
        {
            //
            print("button has been disabled")
            //
            (buttonLabel!).isEnabled=false
        }
    }
    
    
    
    

}

