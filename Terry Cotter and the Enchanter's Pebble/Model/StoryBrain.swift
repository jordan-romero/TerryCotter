//
//  StoryBrain.swift
//  Terry Cotter and the Enchanter's Pebble
//
//  Created by Jordan Romero on 1/22/21.
//

import Foundation

struct StoryBrain {
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
    
    func nextStory() {
        
        let currentStory = stories[storyNumber]
        
        if userChoice == currentStory.choice1 {
            storyNumber = 1
        } else if userChoice == currentStory.choice2 {
            storyNumber = 2
        }
    }
}
