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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        anagramLabel.text = getAnagram(anagram: anagramWord)
        
    }

    @IBAction func checkAnagram(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Anagram!", message: "", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okButton)
        
        for letter in anagramTextfield.text! {
            if anagramWord.lowercased().contains(letter) {
                isAnagram = true
            } else {
                isAnagram = false
                break
            }
        }

        if isAnagram == true {
            score += 1
            alert.message = "You scored! +1"
        } else {
            score -= 1
            alert.message = "Not an anagram :( -1"
        }
        
        present(alert, animated: true)
        scoreLabel.text = "Score: \(score)"
        anagramTextfield.text = ""
    }
    
    func getAnagram(anagram: String) -> String {
        return anagram
    }
    
}

