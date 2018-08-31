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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func checkAnagram(_ sender: UIButton) {
        for letter in anagramTextfield.text! {
            if anagramWord.contains(letter) {
                isAnagram = true
            } else {
                isAnagram = false
            }
        }
        print(isAnagram)
        if isAnagram == true {
            score += 1
        } else {
            score -= 1
        }
        
        scoreLabel.text = "Score: \(score)"
        anagramTextfield.text = ""
    }
    
    func getAnagram(anagram: String) -> String {
        return anagram
    }
    
}

