//
//  ViewController.swift
//  QuizApp
//
//  Created by Samuel Yanez on 10/12/17.
//  Copyright © 2017 Samuel Yanez. All rights reserved.
//

import UIKit
import GameKit
import AudioToolbox

class ViewController: UIViewController {
    
    @IBOutlet weak var questionField: UILabel!
    @IBOutlet weak var feedbackField: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    @IBOutlet weak var thirdChoiceButton: UIButton!
    @IBOutlet weak var fourthChoiceButton: UIButton!
    @IBOutlet weak var nextQuestionButton: UIButton!
    
    var questions = QuestionModel()
    let score = ScoreModel()
    
    let numberOfQuestionPerRound = 5
    var currentQuestion: Question? = nil

    var gameStartSound: SystemSoundID = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadGameStartSound()
        playGameStartSound()
        displayQuestion()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func isGameOver() -> Bool {
        return score.getQuestionsAsked() >= numberOfQuestionPerRound
    }
    
    func displayQuestion() {
        currentQuestion = questions.getRandomQuestion()
        
        if let question = currentQuestion {
            let choices = question.getChoices()
            
            questionField.text = question.getText()
            firstChoiceButton.setTitle(choices[0], for: .normal)
            secondChoiceButton.setTitle(choices[1], for: .normal)
            thirdChoiceButton.setTitle(choices[2], for: .normal)
            fourthChoiceButton.setTitle(choices[3], for: .normal)
            
            if (score.getQuestionsAsked() == numberOfQuestionPerRound - 1) {
                nextQuestionButton.setTitle("End Quiz", for: .normal)
            } else {
                nextQuestionButton.setTitle("Next Question", for: .normal)
            }
        }
        
        firstChoiceButton.isEnabled = true
        secondChoiceButton.isEnabled = true
        thirdChoiceButton.isEnabled = true
        fourthChoiceButton.isEnabled = true

        firstChoiceButton.isHidden = false
        secondChoiceButton.isHidden = false
        thirdChoiceButton.isHidden = false
        fourthChoiceButton.isHidden = false
        feedbackField.isHidden = true

        nextQuestionButton.isEnabled = false
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        if let question = currentQuestion, let answer = sender.titleLabel?.text {
            
            if (question.validateAnswer(to: answer)) {
                score.incrementCorrectAnswers()
                feedbackField.textColor = UIColor.green
                feedbackField.text = "Correct!"
            } else {
                score.incrementIncorrectAnswers()
                feedbackField.textColor = UIColor.red
                feedbackField.text = "Sorry, that's not it."
            }
            firstChoiceButton.isEnabled = false
            secondChoiceButton.isEnabled = false
            thirdChoiceButton.isEnabled = false
            fourthChoiceButton.isEnabled = false
            nextQuestionButton.isEnabled = true
            
            feedbackField.isHidden = false
        }
    }
    
    @IBAction func nextQuestionTapped(_ sender: Any) {
        if (isGameOver()) {
            displayScore()
        } else {
            displayQuestion()
        }
    }
    
    func displayScore() {
        questionField.text = score.getScore()
        score.reset()
        nextQuestionButton.setTitle("Play again", for: .normal)
        
        feedbackField.isHidden = true
        firstChoiceButton.isHidden = true
        secondChoiceButton.isHidden = true
        thirdChoiceButton.isHidden = true
        fourthChoiceButton.isHidden = true
    }
    
    // MARK: Sounds
    
    func loadGameStartSound() {
        let pathToSoundFile = Bundle.main.path(forResource: "GameSound", ofType: "wav")
        let soundURL = URL(fileURLWithPath: pathToSoundFile!)
        
        AudioServicesCreateSystemSoundID(soundURL as CFURL, &gameStartSound)
    }
    
    func playGameStartSound() {
        AudioServicesPlaySystemSound(gameStartSound)
    }
}
