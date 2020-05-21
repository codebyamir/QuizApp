//
//  QuestionModel.swift
//  QuizApp
//
//  Created by Samuel Yanez on 10/12/17.
//  Copyright © 2017 Samuel Yanez. All rights reserved.
//

import GameKit

struct QuestionModel {
    
    let questions = [
        Question(interrogative: "A bean instance in this scope lives within the lifetime of a single HTTP Session.", answers: ["global session","request","session","application"], correctAnswerIndex: 2),
        Question(interrogative: "Its advantages include:  faster development, lesser repetitive SQL code, and less if any at all need to deal with vendor-specific SQL and database issues.  Its disadvantages include:  a little more initial learning curve needed, and can be a little slower than SQL queries when it comes to complex queries.", answers: ["AOP", "JDBC", "OXM", "ORM"], correctAnswerIndex: 3),
        Question(interrogative: "In Spring Boot, if the HSQLDB jar dependencies are on the classpath, and no database connection bean has been manually configured, what will happen?", answers: ["Spring Boot will auto-configure an in-memory database.", "An exception will be thrown.","No auto-configuration will be done for HSQLDB.","None of the above"], correctAnswerIndex: 0),
    ]
    
    var previouslyUsedNumbers: [Int] = []
    
    mutating func getRandomQuestion() -> Question {
        
        if (previouslyUsedNumbers.count == questions.count) {
            previouslyUsedNumbers = []
        }
        var randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        
        // Picks a new random number if the previous one has been used
        while (previouslyUsedNumbers.contains(randomNumber)) {
            randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        }
        previouslyUsedNumbers.append(randomNumber)
        
        return questions[randomNumber]
    }
}

class Question {
    
    fileprivate let interrogative: String
    fileprivate let answers: [String]
    fileprivate let correctAnswerIndex: Int
    
    init(interrogative: String, answers: [String], correctAnswerIndex: Int) {
        self.interrogative = interrogative
        self.answers = answers
        self.correctAnswerIndex = correctAnswerIndex
    }
    
    func validateAnswer(to givenAnswer: String) -> Bool {
        return (givenAnswer == answers[correctAnswerIndex])
    }
    
    func getInterrogative() -> String {
        return interrogative
    }
    
    func getAnswer() -> String {
        return answers[correctAnswerIndex]
    }
    
    func getChoices() -> [String] {
        return answers
    }
    
    func getAnswerAt(index: Int) -> String {
        return answers[index]
    }
}
