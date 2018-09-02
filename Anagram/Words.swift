//
//  Words.swift
//  Anagram
//
//  Created by Jordan on 9/1/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import Foundation

class Words {
    
    var tempWords = [String]()
    var allWords = [String: Int]()
    
    func loadWords() {
        let path = Bundle.main.path(forResource: "test", ofType: "txt")
        let wordString = try! String(contentsOfFile: path!)
        let tempWords = wordString.components(separatedBy: "/n")
        
        for word in tempWords {
            
            allWords = [word : 1]
        }
        
        print(allWords)
        
    }
}

