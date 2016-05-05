//
//  ViewController.swift
//  tick tack toe
//
//  Created by Wing H. Liang on 5/4/16.
//  Copyright © 2016 Wing H. Liang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentColor = "blue"
    
    var winningCombos = [
        [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]
    ]
    
    var bluePlayer: [Int] = []

    var redPlayer: [Int] = []
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var button5: UIButton!
    
    @IBOutlet weak var button6: UIButton!
    
    @IBOutlet weak var button7: UIButton!
    
    @IBOutlet weak var button8: UIButton!
    
    @IBOutlet weak var button9: UIButton!

    
    func CheckforWinner (playerArray: [Int]) -> Bool {
  
        var totalMatch = 0
        
        for combo in winningCombos {

            print("player array is \(playerArray)")
            print("analyzing combo is \(combo)")
            
            for comboNum in combo {
                
                print("now analyzing comboNum \(comboNum)")
                
                for playerNum in playerArray {

                    print("comparing playerNum \(playerNum) to comboNum \(comboNum)")
                    
                    if comboNum == playerNum {
                        totalMatch += 1
                        print("found match.  totalMatch is now \(totalMatch)")
                        break
                    }
                }
            }
            if totalMatch == 3 {
                print("found winning array: \(playerArray)!")
                return true
            } else {
                print("no winner found yet resetting total match to 0 and starting with new combo.\n")
                totalMatch = 0
            }
        }
        
        
        print("NO WINNER!")
        return false
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        
       if sender.tag == 1 {
            if button1.backgroundColor != UIColor.blueColor() && button1.backgroundColor != UIColor.redColor() {
                if currentColor == "blue"{
                    button1.backgroundColor = UIColor.blueColor()
                    bluePlayer.append(1)

                    if CheckforWinner(bluePlayer){
                        winnerLabel.text = "Blue wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "red"
                    }
                } else {
                    button1.backgroundColor = UIColor.redColor()
                    redPlayer.append(1)

                    if CheckforWinner(redPlayer){
                        winnerLabel.text = "Red wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "blue"
                    }
                }
            }
        print(button9.backgroundColor)
        }

        if sender.tag == 2 {
            if button2.backgroundColor != UIColor.blueColor() && button2.backgroundColor != UIColor.redColor() {
                if currentColor == "blue"{
                    button2.backgroundColor = UIColor.blueColor()
                    bluePlayer.append(2)

                    if CheckforWinner(bluePlayer){
                        winnerLabel.text = "Blue wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "red"
                    }

                } else {
                    button2.backgroundColor = UIColor.redColor()
                    redPlayer.append(2)
                    if CheckforWinner(redPlayer){
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "blue"
                    }

                }
            }
        }
        
        if sender.tag == 3 {
            if button3.backgroundColor != UIColor.blueColor() && button3.backgroundColor != UIColor.redColor() {
                if currentColor == "blue"{
                    button3.backgroundColor = UIColor.blueColor()
                    bluePlayer.append(3)
                    if CheckforWinner(bluePlayer){
                        winnerLabel.text = "Blue wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "red"
                    }
                } else {
                    button3.backgroundColor = UIColor.redColor()
                    redPlayer.append(3)
                    if CheckforWinner(redPlayer){
                        winnerLabel.text = "Red wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "blue"
                    }
                }
            }
        }
        
        if sender.tag == 4 {
            if button4.backgroundColor != UIColor.blueColor() && button4.backgroundColor != UIColor.redColor() {
                if currentColor == "blue"{
                    button4.backgroundColor = UIColor.blueColor()
                    bluePlayer.append(4)
                    if CheckforWinner(bluePlayer){
                        winnerLabel.text = "Blue wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "red"
                    }
                } else {
                    button4.backgroundColor = UIColor.redColor()
                    redPlayer.append(4)
                    if CheckforWinner(redPlayer){
                        winnerLabel.text = "Red wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "blue"
                    }
                }
            }
        }
        
        if sender.tag == 5 {
            if button5.backgroundColor != UIColor.blueColor() && button5.backgroundColor != UIColor.redColor() {
                if currentColor == "blue"{
                    button5.backgroundColor = UIColor.blueColor()
                    bluePlayer.append(5)
                    if CheckforWinner(bluePlayer){
                        winnerLabel.text = "Blue wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "red"
                    }
                } else {
                    button5.backgroundColor = UIColor.redColor()
                    redPlayer.append(5)
                    if CheckforWinner(redPlayer){
                        winnerLabel.text = "Red wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "blue"
                    }
                }
            }
        }
        
        if sender.tag == 6 {
            if button6.backgroundColor != UIColor.blueColor() && button6.backgroundColor != UIColor.redColor() {
                if currentColor == "blue"{
                    button6.backgroundColor = UIColor.blueColor()
                    bluePlayer.append(6)
                    if CheckforWinner(bluePlayer){
                        winnerLabel.text = "Blue wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "red"
                    }
                } else {
                    button6.backgroundColor = UIColor.redColor()
                    redPlayer.append(6)
                    if CheckforWinner(redPlayer){
                        winnerLabel.text = "Red wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "blue"
                    }
                }
            }
        }

        if sender.tag == 7 {
            if button7.backgroundColor != UIColor.blueColor() && button7.backgroundColor != UIColor.redColor() {
                if currentColor == "blue"{
                    button7.backgroundColor = UIColor.blueColor()
                    bluePlayer.append(7)
                    if CheckforWinner(bluePlayer){
                        winnerLabel.text = "Blue wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "red"
                    }
                } else {
                    button7.backgroundColor = UIColor.redColor()
                    redPlayer.append(7)
                    if CheckforWinner(redPlayer){
                        winnerLabel.text = "Red wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "blue"
                    }
                }
            }
        }
        
        if sender.tag == 8 {
            if button8.backgroundColor != UIColor.blueColor() && button8.backgroundColor != UIColor.redColor() {
                if currentColor == "blue"{
                    button8.backgroundColor = UIColor.blueColor()
                    bluePlayer.append(8)
                    if CheckforWinner(bluePlayer){
                        winnerLabel.text = "Blue wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "red"
                    }
                } else {
                    button8.backgroundColor = UIColor.redColor()
                    redPlayer.append(8)
                    if CheckforWinner(redPlayer){
                        winnerLabel.text = "Red wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "blue"
                    }
                }
            }
        }
        
        if sender.tag == 9 {
            if button9.backgroundColor != UIColor.blueColor() && button9.backgroundColor != UIColor.redColor() {
                if currentColor == "blue"{
                    button9.backgroundColor = UIColor.blueColor()
                    bluePlayer.append(9)
                    if CheckforWinner(bluePlayer){
                        winnerLabel.text = "Blue wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "red"
                    }
                } else {
                    button9.backgroundColor = UIColor.redColor()
                    redPlayer.append(9)
                    if CheckforWinner(redPlayer){
                        winnerLabel.text = "Red wins!"
                        winnerLabel.hidden = false
                    } else {
                        currentColor = "blue"
                    }
                }
            }
        }
        
        
    }
    
    
    @IBAction func resetButton(sender: UIButton) {
        bluePlayer = []
        redPlayer = []
        currentColor = "blue"
        button1.backgroundColor = UIColor(red: 0.911575, green: 0.911575, blue: 0.911575, alpha: 1)
        button2.backgroundColor = UIColor(red: 0.911575, green: 0.911575, blue: 0.911575, alpha: 1)
        button3.backgroundColor = UIColor(red: 0.911575, green: 0.911575, blue: 0.911575, alpha: 1)
        button4.backgroundColor = UIColor(red: 0.911575, green: 0.911575, blue: 0.911575, alpha: 1)
        button5.backgroundColor = UIColor(red: 0.911575, green: 0.911575, blue: 0.911575, alpha: 1)
        button6.backgroundColor = UIColor(red: 0.911575, green: 0.911575, blue: 0.911575, alpha: 1)
        button7.backgroundColor = UIColor(red: 0.911575, green: 0.911575, blue: 0.911575, alpha: 1)
        button8.backgroundColor = UIColor(red: 0.911575, green: 0.911575, blue: 0.911575, alpha: 1)
        button9.backgroundColor = UIColor(red: 0.911575, green: 0.911575, blue: 0.911575, alpha: 1)
        winnerLabel.hidden = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        winnerLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

