//
//  Question.swift
//  MultipleChoiceApp
//
//  Created by user202406 on 2/12/22.
//

import Foundation

struct Question {
    let text:String
    let choiceAnswer:[String]
    let correctAnswer:String
    //custom initialiser
    init(q: String, a: [String] , correctAnswer: String) {
        text = q;
        choiceAnswer = a;
        self.correctAnswer = correctAnswer;
    }
}
