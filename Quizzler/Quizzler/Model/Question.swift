//
//  Question.swift
//  Quizzler
//
//  Created by Marlon Junior🦈⚓️ on 17/08/21.
//

import Foundation

struct question {
    var question : String
    var correctAnswer : String
    var secondAnswer : String
    var thirdAnswer : String
    
    init(question : String , correctAnswer : String, secondAnswer : String, thirdAnswer : String) {
        self.question = question
        self.correctAnswer  = correctAnswer
        self.secondAnswer  = secondAnswer
        self.thirdAnswer  = thirdAnswer
    }
}
