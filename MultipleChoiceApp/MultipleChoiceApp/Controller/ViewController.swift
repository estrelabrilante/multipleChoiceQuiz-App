//
//  ViewController.swift
//  MultipleChoiceApp
//
//  Created by user202406 on 2/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var choiceThreeBtn: UIButton!
    @IBOutlet weak var choiceTwoBtn: UIButton!
    @IBOutlet weak var choiceOneBtn: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var choiceOfAnswer = MultipleChoice();
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    @IBAction func selectedButton(_ sender: UIButton) {
        let usrAnswer = sender.currentTitle!;
        
        //quizBrain is object of struct QuizBrain
    let userGotIt = choiceOfAnswer.checkAnswer(usrAnswer);
        if userGotIt{
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        //*** update UI after user got right answer or wrong
        choiceOfAnswer.nextQuestion();
    Timer.scheduledTimer(timeInterval: 1.0 , target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        updateUI()
        
        // content in button need to update when question update
    
    }
    @objc func updateTimer(){
        if choiceOneBtn.backgroundColor   == UIColor.green  {
            choiceOneBtn.backgroundColor = UIColor.clear;
        }else if choiceOneBtn.backgroundColor == UIColor.red {
            choiceOneBtn.backgroundColor = UIColor.clear
        }
        if choiceTwoBtn.backgroundColor   == UIColor.green  {
            choiceTwoBtn.backgroundColor = UIColor.clear;
        }else if choiceTwoBtn.backgroundColor == UIColor.red {
            choiceTwoBtn.backgroundColor = UIColor.clear
        }
        if choiceThreeBtn.backgroundColor   == UIColor.green  {
            choiceThreeBtn.backgroundColor = UIColor.clear;
        }else if choiceThreeBtn.backgroundColor == UIColor.red {
            choiceThreeBtn.backgroundColor = UIColor.clear
        }
    }
    func updateUI()
    {
        choiceOneBtn.setTitle(choiceOfAnswer.choiceOne(), for: .normal);
        choiceTwoBtn.setTitle(choiceOfAnswer.choiceTwo(), for: .normal);
        choiceThreeBtn.setTitle(choiceOfAnswer.choiceThree(), for: .normal);
        questionText.text = choiceOfAnswer.getQuestionText()
       progressBar.progress = choiceOfAnswer.getProgress()
      scoreLabel.text = "Score: \(choiceOfAnswer.getScore())"
    }
    
}

