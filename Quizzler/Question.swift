//
//  Question.swift
//  Quizzler
//
//  Created by Aleksandra Asichka on 2023-02-01.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
