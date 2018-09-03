//
//  ViewController.swift
//  Anagram
//
//  Created by Jordan on 8/31/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var anagramLabel: UILabel!
    @IBOutlet weak var anagramTextfield: UITextField!
    @IBOutlet weak var scoreLabel: UILabel!
    
    let anagramWord = "Supercalifragilisticexpialidocious"
    var score = 0
    var isAnagram = false
    var answerMessage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Words().loadWords()
        anagramLabel.text = getAnagram(anagram: anagramWord)
        
    }
    
    @IBAction func checkButton(_ sender: UIButton) {
        
        checkAnagram()
        playerScore()
        showScoreAlert()
        
    }
    
    func getAnagram(anagram: String) -> String {
        return anagram
    }
    
    func constructAlert(title: String, message: String, style: UIAlertControllerStyle) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        
        return alert
        
    }
    
    func constructAlertAction(title: String, style: UIAlertActionStyle) -> UIAlertAction {
        let buttonAction = UIAlertAction(title: title, style: style)
        
        return buttonAction
    }
    
    func showScoreAlert() {
        let scoreAlert = constructAlert(title: "Anagram Game", message: answerMessage, style: .alert)
        scoreAlert.addAction(constructAlertAction(title: "Ok", style: .default))
        
        present(scoreAlert, animated: true)
    }
    
    func checkAnagram() {
        for letter in anagramTextfield.text! {
            if anagramWord.contains(letter) {
                if let testWord = Words().hashTable[anagramTextfield.text!] {
                    isAnagram = true
                }
            } else {
                isAnagram = false
                return
            }
        }
    }
    
    func playerScore() {
        if isAnagram == true {
            score += 1
            answerMessage = "You scored! +1"
        } else {
            score -= 1
            answerMessage = "Not an anagram :( -1"
        }
        
        scoreLabel.text = "Score: \(score)"
        anagramTextfield.text = ""
    }
}

