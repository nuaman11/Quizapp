//
//  ViewController.swift
//  Quizapp
//
//  Created by TRAINING on 27/12/21.
//  Copyright © 2021 vjec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allquestion = QuestionBank()
    var score = 0
    var QuestionNumber = 0
    var pickedAnswer = true
    
    @IBOutlet weak var lblOustn: UILabel!
    @IBOutlet weak var lblProgress: UILabel!
    @IBOutlet weak var vwProgress: UIView!
    @IBOutlet weak var lblScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblOustn.text = allquestion.list[0].questionText
    
    }

    @IBAction func answer(_ sender: UIButton) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        //print(pickedAnswer)
        checkAnswer()
        print(score)
        QuestionNumber += 1
        nextQuestion()
    }
    
    func checkAnswer(){
        let correctAnswer = allquestion.list[QuestionNumber].answer
        if correctAnswer == pickedAnswer {
            print("correct")
            score += 1
            lblScore.text = "Score :\(score) /10"
        }else {
            print("wrong")
        }
    }
    
    func nextQuestion(){
        if QuestionNumber <= 9 {
            lblOustn.text = allquestion.list[QuestionNumber].questionText
            updateUI()
        }
        else {
            print("quiz completed")
            
            
            
            let alert = UIAlertController(title: "Quiz complted", message: "do you want to continue?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Continue", style: .default){ (UIAlertAction) in self.startOver()
                
            }
        alert.addAction(restartAction)
        present(alert, animated: true, completion: nil)
        
        }
    }
   func  updateUI(){
    lblProgress.text = "\(QuestionNumber + 1)/10"
    lblScore.text = "Score : \(score)/10"
    vwProgress.frame.size.width = (view.frame.size.width/10) * (CGFloat(QuestionNumber + 1))
    }
    func startOver(){
        QuestionNumber = 0
        score = 0
        nextQuestion()
    }
    
}

