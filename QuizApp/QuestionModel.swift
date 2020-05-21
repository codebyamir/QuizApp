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
        Question(text: "A bean instance in this scope lives within the lifetime of a single HTTP Session.", answers: ["global session","request","session","application"], correctAnswerIndex: 2),
        Question(text: "Its advantages include:  faster development, lesser repetitive SQL code, and less if any at all need to deal with vendor-specific SQL and database issues.  Its disadvantages include:  a little more initial learning curve needed, and can be a little slower than SQL queries when it comes to complex queries.", answers: ["AOP", "JDBC", "OXM", "ORM"], correctAnswerIndex: 3),
        Question(text: "In Spring Boot, if the HSQLDB jar dependencies are on the classpath, and no database connection bean has been manually configured, what will happen?", answers: ["Spring Boot will auto-configure an in-memory database.", "An exception will be thrown.","No auto-configuration will be done for HSQLDB.","None of the above"], correctAnswerIndex: 0),
        Question(text: "The presence of this annotation informs Spring Boot that it should take an opinionated approach to configuring the application.", answers: ["@EnableAutoConfiguration","@AutoConfig","@OpinionatedConfig","@EnableSpringBootConfig"], correctAnswerIndex: 0),
        Question(text: "In REST services, HTTP status return codes are used.  The HTTP status return code ____, means 'OK'.  The HTTP status return code ____, means 'No Content'.", answers: ["200, 204", "100, 400", "200, 400", "100, 204"], correctAnswerIndex: 0),
        Question(text: "Which of these is the HTTP response code when there is an internal server error (HttpStatus.INTERNAL_SERVER_ERROR)?", answers: ["200", "300", "400", "500"], correctAnswerIndex: 3),
        Question(text: "Which of these is the HTTP response code when the request is considered forbidden (HttpStatus.FORBIDDEN)?", answers: ["203", "303", "403", "503"], correctAnswerIndex: 2),
         Question(text: "REST is a simpler alternative to SOAP and WSDL-based Web services.  What does REST stand for?", answers: ["Representational State Transfer", "Representational Entity State Transformation", "Relational State Transfer", "Relational Entity State Transformation"], correctAnswerIndex: 0),
         Question(text: "In REST services, what does CRUD mean?", answers: ["central, representational, uniform, delivery", "create, read, update, delete", "component, resource, unified, data","component, representational, unified, dataQuestion"], correctAnswerIndex: 1),
    
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
    
    fileprivate let text: String
    fileprivate let answers: [String]
    fileprivate let correctAnswerIndex: Int
    
    init(text: String, answers: [String], correctAnswerIndex: Int) {
        self.text = text
        self.answers = answers
        self.correctAnswerIndex = correctAnswerIndex
    }
    
    func validateAnswer(to givenAnswer: String) -> Bool {
        return (givenAnswer == answers[correctAnswerIndex])
    }
    
    func getText() -> String {
        return text
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
