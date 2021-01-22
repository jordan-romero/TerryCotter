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
    
    var storyNumber = 0
    
    
    let stories = [
        Story(title: "Welcome Terry Cotter",
              choice1: "Join Luffelpoof",
              choice2: "Join RrifanClaw"
        ),
        Story(title: "Thank you for joining Luffelpoof, but you're late for class.", choice1: "Run to class.", choice2: "Scoff and continue walking to class."
        ),
        Story(title: "Thank you for joining RrifanClaw, excellent choice, choose a sweet.", choice1: "Chocolate Toad", choice2: "Sugar Pens."
        ),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = stories[0].title
        choice1Button.setTitle(stories[0].choice1, for: .normal)
        choice2Button.setTitle(stories[0].choice2, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        
        let currentStory = stories[storyNumber]
        
        if userChoice == currentStory.choice1 {
            storyNumber = 1
        } else if userChoice == currentStory.choice2 {
            storyNumber = 2
        }
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = stories[storyNumber].title
        choice1Button.setTitle(stories[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(stories[storyNumber].choice2, for: .normal)
    }
    
}

