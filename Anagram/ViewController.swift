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
    
    @IBAction func checkAnagram(_ sender: UIButton) {
        
        
        checkAnagram()
        
        if checkAnagram() == true {
            score += 1
            alert.message = "You scored! +1"
        } else {
            score -= 1
            alert.message = "Not an anagram :( -1"
        }
        
        showAlert()
        scoreLabel.text = "Score: \(score)"
        anagramTextfield.text = ""
    }
    
    func getAnagram(anagram: String) -> String {
        return anagram
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Anagram!", message: "", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
    func checkAnagram() -> Bool {
        for letter in anagramTextfield.text! {
            if anagramWord.lowercased().contains(letter) {
                return true
            } else {
                return false
                break
            }
        }
        
    }
}

