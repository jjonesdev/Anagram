//
//  Words.swift
//  Anagram
//
//  Created by Jordan on 9/1/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import Foundation

class Words {
    
    var allWords = [String: Int]()
    var dictionaryNumber = 1
    
    func loadWords() {
        let path = Bundle.main.path(forResource: "words_alpha", ofType: "txt")
        let wordString = try! String(contentsOfFile: path!)
        let tempWords = wordString.components(separatedBy: "\n")
        
        for word in tempWords {
            allWords[word] = dictionaryNumber
            dictionaryNumber += 1
        }
        
        //print(allWords)
    }
}

