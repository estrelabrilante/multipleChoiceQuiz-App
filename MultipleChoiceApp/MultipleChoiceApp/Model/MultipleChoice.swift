//
//  MultipleChoice.swift
//  MultipleChoiceApp
//
//  Created by user202406 on 2/12/22.
//

import Foundation

struct MultipleChoice {
    
let quizNew = [
     Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
            Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
            Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
            Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
            Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
            Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
            Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
            Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
            Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
            Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")

];
    var questionNumber = 0;
    var score = 0;
    mutating func checkAnswer (_ userAnswer: String) -> Bool {
         
         if userAnswer == quizNew[questionNumber].correctAnswer{
             //User got it correct
              score += 1;
             return true
         }
         else{
             //user got it wrong
             return false
         }
         
     };
    // content in button need to update when question update
      func choiceOne() -> String{
        
        return quizNew[questionNumber].choiceAnswer[0]
        
        
    };
     func choiceTwo() -> String{
      
        return quizNew[questionNumber].choiceAnswer[1]
    };
     func choiceThree() -> String{
      
        return quizNew[questionNumber].choiceAnswer[2]
    };
    
   func getQuestionText() -> String{
        
        return quizNew[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1 )/Float (quizNew.count)
        
    }
    
    mutating func nextQuestion() {
            if questionNumber + 1 < quizNew.count
            {  questionNumber += 1
            
            }
            else{
                questionNumber = 0
              score = 0
                
            }
        
    }
    func getScore() -> Int {
                return score
        }
     }
