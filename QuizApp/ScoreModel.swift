//
//  ScoreModel.swift
//  QuizApp
//
//  Created by Samuel Yanez on 10/12/17.
//  Copyright © 2017 Samuel Yanez. All rights reserved.
//

import Foundation

class ScoreModel {
    
    fileprivate var correctAnswers: Int = 0
    fileprivate var incorrectAnswers: Int = 0
    
    func reset() {
        correctAnswers = 0
        incorrectAnswers = 0
    }

    func incrementCorrectAnswers() {
        correctAnswers += 1
    }
    
    func incrementIncorrectAnswers() {
        incorrectAnswers += 1
    }
    
    func getQuestionsAsked() -> Int {
        return correctAnswers + incorrectAnswers
    }
    
    func getScore() -> String {
        let percentile = Double(correctAnswers) / Double(getQuestionsAsked()) * 100
        
        if (percentile > 75) {
            return "Way to go!\n You got \(correctAnswers) out of \(getQuestionsAsked()) correct answers! \n \(percentile)%"
        } else {
            return "You can do better.\n You got \(correctAnswers) out of \(getQuestionsAsked()) correct answers.\n \(percentile)%"
        }
    }
}
