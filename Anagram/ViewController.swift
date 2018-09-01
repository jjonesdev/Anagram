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
        anagramLabel.text = getAnagram(anagram: anagramWord)
        
    }
    
    @IBAction func checkButton(_ sender: UIButton) {
        
        checkAnagram()
        playerScore()
        showAlert()
        
    }
    
    
    func getAnagram(anagram: String) -> String {
        return anagram
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Anagram Game", message: "", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okButton)
        alert.message = answerMessage
        present(alert, animated: true)
    }
    
    func checkAnagram() -> Bool {
        for letter in anagramTextfield.text!.lowercased() {
            if anagramWord.lowercased().contains(letter) {
                isAnagram = true
            } else {
                isAnagram = false
                return false
            }
        }
        return true
    }
    
    func playerScore() {
        if checkAnagram() == true {
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

