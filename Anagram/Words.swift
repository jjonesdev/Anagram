//
//  Words.swift
//  Anagram
//
//  Created by Jordan on 9/1/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import Foundation

class Words {
    
    let wordFile = String(contentsOfFile: "test")
    let words : [String] = text.componentsSeparatedByString("\n")
    
    print(words)
    
    init(wordFile: String, words: [String]) {
        self.wordFile = wordFile
        self.words = words
    }
}

