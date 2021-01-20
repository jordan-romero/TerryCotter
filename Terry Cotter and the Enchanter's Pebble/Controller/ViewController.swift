//
//  ViewController.swift
//  Terry Cotter and the Enchanter's Pebble
//
//  Created by Jordan Romero on 1/20/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    let stories = [
        Story(title: "Welcome Terry Cotter",
              choice1: "Join Luffelpoof",
              choice2: "Join RrifanClaw"
        ),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."
        ),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps."
        ),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = stories[0].title
        choice1Button.setTitle(stories[0].choice1, for: .normal)
        choice2Button.setTitle(stories[0].choice2, for: .normal)
    }


}

