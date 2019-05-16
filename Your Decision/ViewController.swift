//
//  ViewController.swift
//  Your Decision
//
//  Created by Eric Korth on 5/8/19.
//  Copyright © 2019 AppStrudel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .black
    }
    
    
    
    //Story Strings:
    
    
    let intro = "You stumble home from work so exhausted, but you have a project that your boss needs by tomorrow. What do you do?"
    let answer1 = "Hit the Hay, deal with the consequences later."
    let answer2 = "Make some coffee, you gotta get that promotion."
    
    let story1 = "You quickly fall asleep...zzz...zzz...AHHHHHH!!! A loud noise has woken you up, and a strange man has appeared in your room! What do you do?"
    let answer1A = "Scream into your pillow and hope it's a quick death."
    let answer1B = "Ask: \"WHO ARE YOU???\""
    
    let story2 = "You down your coffee and get working on your project...Suddenly, you hear a noise from outside your room. You rush out to your foyer, and see a figure of a man standing in your doorway...What do you do?"
    let answer2A = "Shout out: \"WHO ARE YOU!?!\""
    let answer2B = "Run, hide, and scream as high-pitched as you can for as long as you can...Maybe the man will get scared and go away."
    
    let story3 = "The man runs to you, grabs you and shakes you and yells, \"Don't worry! I'm not here to kill you! I need your help!\""
    let answer3A = "Ask: \"WHO ARE YOU???\""
    
    let story4 = "The man says, \"My name is Idris Hedrum, I work with the CIA and I need your help...The CIA has just tracked some Alien activity coming from right near your house. Would you help me search outside?\""
    let answer4A = "\"Okay, let's go.\""
    let answer4B = "\"Pshhhh, aliens? Yeah right.\""
    
    let story5 = "You screamed loud enough for the man to run away. However, in the process you hyper-ventilated causing you to pass away...GAME OVER"
    
    let story6 = "As you walk around the outside of your house, you notice a giant UFO in your back-yard...Idris says, \"Here it is...Shhhh, let's try and get closer.\""
    let answer6A = "Confidently run up to the UFO and knock on the door."
    let answer6B = "Follow Idris quietly."
    
    let story7 = "You stumble back to bed as the man leaves...All of a sudden...BOOM! There's an explosion right outside your house!"
    let answer7A = "Shrug it off and go back to bed."
    let answer7B = "Run outside to check what happened."
    
    let story8 = "The spaceship door slowly opens...An alien appears, and before you can say \"hello!\" The alien incinerates you with his blaster gun...GAME OVER"
    
    let story9 = "You and Idris reach the door of the ship, you sneak inside, and see an alien! What do you do?"
    let answer9A = "Run and tackle him!"
    let answer9B = "Nervously say \"Hello.\""
    
    let story10 = "You wake up the next morning to the smell of ash. You look outside your window to see your whole neighborhood has been destroyed! What do you do?"
    let answer10A = "Run around and scream like an idiot."
    let answer10B = "Get really scared, and cry."
    
    let story11 = "You run outside to your back-yard, and to your amazement there is a UFO there, with Idris next to it...dead. What do you do?"
    let answer11A = "Throw your hands up in the air and say, \"Nope! Not today devil.\" And go back inside and go to sleep."
    let answer11B = "Mourn the death of Idris."
    
    let story12 = "The alien gets really mad and throws you off his back and incinerates you with his blaster...GAME OVER"
    
    let story13 = "The alien turns around, sees your face, gasps and says...\"My Son\"...What do you do?"
    let answer13A = "Ask: \"What are you talking about???\""
    let answer13B = "Yell: \"I'm not your son!\""
    
    let story14 = "You've accomplished nothing by running around and screaming. Your house has been burning slowly the whole time, and collapses on top of you...GAME OVER"
    
    let story15 = "You've accomplished nothing by crying. You're house has been burning slowly the whole time, and collapses on top of you...GAME OVER"
    
    let story16 = "As you cry over Idris being dead, you hear the ship door start to open! You look up and see an alien standing there...What do you do?"
    let answer16A = "Scream as high pitched as you can!"
    let answer16B = "Confront the alien."
    
    let story17 = "The alien says, \"Yes, it's true...and now that I've found you, we can destroy this world together! How does that sound? Make your choice son...It's your decision.\""
    let answer17A = "\"No way! Die alien!\" You and Idris proceed to fight the alien..."
    let answer17B = "\"Yeah, that sounds cool daddio!\""
    
    let ending1 = "As you scream, the alien gets really mad and points his blaster gun at you! All of a sudden as you continue to scream, he grabs his ears, and falls suddenly to his death! Congratulations! You saved Earth!"
    
    let story19 = "As you approach the alien, he looks at your face and gasps! The alien says, \"My son...\"What do you do?"
    let answer19A = "Ask: \"What are you talking about!?\""
    let answer19B = "Smack the alien across the face, and say, \"No! I'm not your son.\""
    
    let ending2 = "You fight with the alien. You land a few nice right hooks on the alien before Idris is able to steal the alien's blaster gun. Idris throws you the gun, and you incinerate the alien, saving the world! Congratulations!"
    
    let ending3 = "You turn to Idris and say, \"sorry bro, but I'm pretty sick of Earth.\" Your alien dad incinerates Idris, and you both fly back to the mothership together, and start to make plans to destroy Earth once and for all!"

    let ending4 = "As you smack the alien, he gets really mad and is about to incinerate you with his blaster...But all of a sudden, Idris wakes up! He steals the alien's blaster gun and incinerates the alien, and the two of you save Earth! Congratulations!"
    //Link up outlets

    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBOutlet weak var restartButton: UIButton!
    
    @IBOutlet weak var topButton: UIButton!
    
    @IBOutlet weak var bottomButton: UIButton!
    
    //Create instance variables
    var storyIndex = 0


    override func viewDidLoad() {
        
        restartButton.layer.cornerRadius = 10
        topButton.layer.cornerRadius = 10
        bottomButton.layer.cornerRadius = 10
        restartButton.isHidden = true
        textLabel.text = intro
        topButton.setTitle(answer1, for: .normal)
        bottomButton.setTitle(answer2, for: .normal)

        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func startOver() {
        
        storyIndex = 0
        restartButton.isHidden = true
        textLabel.text = intro
        topButton.setTitle(answer1, for: .normal)
        bottomButton.setTitle(answer2, for: .normal)
        topButton.isHidden = false
        bottomButton.isHidden = false
        
    }
    
    //Creating a gameOver Function.
    
    func gameOver() {
        
        topButton.isHidden = true
        bottomButton.isHidden = true
        restartButton.isHidden = false
        
    }
    
    //Restart Button UIAction
    
    @IBAction func restartButtonPressed(_ sender: Any) {
        
        startOver()
    }
    
    //Logic Behind the Buttons
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        print(sender.tag)
        
        if storyIndex == 0 && sender.tag == 1 {
            
            storyIndex = 1
            textLabel.text = story1
            topButton.setTitle(answer1A, for: .normal)
            bottomButton.setTitle(answer1B, for: .normal)
            
            
        } else if storyIndex == 0 && sender.tag == 2 {
            
            storyIndex = 2
            textLabel.text = story2
            topButton.setTitle(answer2A, for: .normal)
            bottomButton.setTitle(answer2B, for: .normal)
            
        } else if storyIndex == 1 && sender.tag == 1 {
            
            storyIndex = 3
            textLabel.text = story3
            bottomButton.isHidden = true
            topButton.setTitle(answer3A, for: .normal)
            
        } else if storyIndex == 1 && sender.tag == 2 {
            
            storyIndex = 4
            textLabel.text = story4
            topButton.setTitle(answer4A, for: .normal)
            bottomButton.setTitle(answer4B, for: .normal)
            
        } else if storyIndex == 3 || storyIndex == 2 && sender.tag == 1 {
            
            storyIndex = 4
            textLabel.text = story4
            bottomButton.isHidden = false
            topButton.setTitle(answer4A, for: .normal)
            bottomButton.setTitle(answer4B, for: .normal)
            
        } else if storyIndex == 2 && sender.tag == 2 {
            
            storyIndex = 5
            textLabel.text = story5
            
        } else if storyIndex == 4 && sender.tag == 1 {
            
            storyIndex = 6
            textLabel.text = story6
            topButton.setTitle(answer6A, for: .normal)
            bottomButton.setTitle(answer6B, for: .normal)
            
        } else if storyIndex == 4 && sender.tag == 2 {
            
            storyIndex = 7
            textLabel.text = story7
            topButton.setTitle(answer7A, for: .normal)
            bottomButton.setTitle(answer7B, for: .normal)
            
        } else if storyIndex == 6 && sender.tag == 1 {
            
            storyIndex = 8
            textLabel.text = story8
            
        } else if storyIndex == 6 && sender.tag == 2 {
            
            storyIndex = 9
            textLabel.text = story9
            topButton.setTitle(answer9A, for: .normal)
            bottomButton.setTitle(answer9B, for: .normal)
            
        } else if storyIndex == 7 && sender.tag == 1 {
            
            storyIndex = 10
            textLabel.text = story10
            topButton.setTitle(answer10A, for: .normal)
            bottomButton.setTitle(answer10B, for: .normal)
            
        } else if storyIndex == 7 && sender.tag == 2 {
            
            storyIndex = 11
            textLabel.text = story11
            topButton.setTitle(answer11A, for: .normal)
            bottomButton.setTitle(answer11B, for: .normal)
            
        } else if storyIndex == 9 && sender.tag == 1 {
            
            storyIndex = 12
            textLabel.text = story12
            
        } else if storyIndex == 9 && sender.tag == 2 {
            
            storyIndex = 13
            textLabel.text = story13
            topButton.setTitle(answer13A, for: .normal)
            bottomButton.setTitle(answer13B, for: .normal)
            
        } else if storyIndex == 10 && sender.tag == 1 {
            
            storyIndex = 14
            textLabel.text = story14
            
            
        } else if storyIndex == 10 && sender.tag == 2 {
            
            storyIndex = 15
            textLabel.text = story15
            
        } else if storyIndex == 11 && sender.tag == 1 {
            
            storyIndex = 10
            textLabel.text = story10
            topButton.setTitle(answer10A, for: .normal)
            bottomButton.setTitle(answer10B, for: .normal)
            
            
        } else if storyIndex == 11 && sender.tag == 2 {
            
            storyIndex = 16
            textLabel.text = story16
            topButton.setTitle(answer16A, for: .normal)
            bottomButton.setTitle(answer16B, for: .normal)
            
        } else if storyIndex == 13 && sender.tag == 1 {
            
            storyIndex = 17
            textLabel.text = story17
            topButton.setTitle(answer17A, for: .normal)
            bottomButton.setTitle(answer17B, for: .normal)
            
        } else if storyIndex == 13 && sender.tag == 2 {
            
            storyIndex = 17
            textLabel.text = story17
            topButton.setTitle(answer17A, for: .normal)
            bottomButton.setTitle(answer17B, for: .normal)

            
        } else if storyIndex == 16 && sender.tag == 1 {
            
            storyIndex = 18
            textLabel.text = ending1
            
            
        } else if storyIndex == 16 && sender.tag == 2 {
            
            storyIndex = 19
            textLabel.text = story19
            topButton.setTitle(answer19A, for: .normal)
            bottomButton.setTitle(answer19B, for: .normal)
            
            
        } else if storyIndex == 17 && sender.tag == 1 {
            
            storyIndex = 20
            textLabel.text = ending2
            
            
        } else if storyIndex == 17 && sender.tag == 2 {
            
            storyIndex = 21
            textLabel.text = ending3
            
        } else if storyIndex == 19 && sender.tag == 1 {
            
            storyIndex = 17
            textLabel.text = story17
            topButton.setTitle(answer17A, for: .normal)
            bottomButton.setTitle(answer17B, for: .normal)

        } else if storyIndex == 19 && sender.tag == 2 {
            
            storyIndex = 22
            textLabel.text = ending4
            
        }
        
        if storyIndex == 5 || storyIndex == 8 || storyIndex == 12 || storyIndex == 14 || storyIndex == 15 || storyIndex == 18 || storyIndex == 20 || storyIndex == 21 || storyIndex == 22 {
            
            gameOver()
        }
        
        
        
        
    }
    
    


}

