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
        Question(text: "A bean instance in this scope lives within the lifetime of a single HTTP Session.", answers:  ["global session": false,"request":false,"session":true,"application":false]),
        Question(text: "Its advantages include:  faster development, lesser repetitive SQL code, and less if any at all need to deal with vendor-specific SQL and database issues.  Its disadvantages include:  a little more initial learning curve needed, and can be a little slower than SQL queries when it comes to complex queries.", answers:  ["AOP":false, "JDBC":false, "OXM":false, "ORM":true]),
        Question(text: "In Spring Boot, if the HSQLDB jar dependencies are on the classpath, and no database connection bean has been manually configured, what will happen?", answers: ["Spring Boot will auto-configure an in-memory database.":true, "An exception will be thrown.":false,"No auto-configuration will be done for HSQLDB.":false,"None of the above":false]),
        Question(text: "The presence of this annotation informs Spring Boot that it should take an opinionated approach to configuring the application.", answers: ["@EnableAutoConfiguration":true,"@AutoConfig":false,"@OpinionatedConfig":false,"@EnableSpringBootConfig":false]),
        Question(text: "In REST services, HTTP status return codes are used.  The HTTP status return code ____, means 'OK'.  The HTTP status return code ____, means 'No Content'.", answers: ["200, 204":true, "100, 400":false, "200, 400":false, "100, 204":false]),
        Question(text: "Which of these is the HTTP response code when there is an internal server error (HttpStatus.INTERNAL_SERVER_ERROR)?", answers:  ["200":false, "300":false, "400":false, "500":true]),
        Question(text: "Which of these is the HTTP response code when the request is considered forbidden (HttpStatus.FORBIDDEN)?", answers: ["203":false, "303":false, "403":true, "503":false]),
//        Question(text: "REST is a simpler alternative to SOAP and WSDL-based Web services.  What does REST stand for?", answers: ["Representational State Transfer":true, "Representational Entity State Transformation":false, "Relational State Transfer":false, "Relational Entity State Transformation":false]),
//        Question(text: "In REST services, what does CRUD mean?", answers: ["central, representational, uniform, delivery", "create, read, update, delete", "component, resource, unified, data","component, representational, unified, dataQuestion"], correctAnswerIndex: 1),
//        Question(text: "To enhance security when working with REST, the 'requires-channel' attribute of the '<intercept-url>' element can be set to this value to enforce HTTPS channel security", answers: ["ssl", "https", "tls/ssl", "tls/https"], correctAnswerIndex: 1),
//        Question(text: "Which of these is a method used in customizing bean lifecycles, and is found inside the DisposableBean interface?", answers: ["postConstruct()", "afterPropertiesSet()", "destroy()", "onInit()"], correctAnswerIndex: 2),
//        Question(text: "Which of these is a valid way of configuring the ContextLoaderListener?", answers: ["<servlet-class>org.springframework.web.context.ContextLoaderListener</servlet-class>","<listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>","<param-name>org.springframework.web.context.ContextLoaderListener</param-name>","<bean name=\"root\" class=\"org.springframework.web.context.ContextLoaderListener\">"], correctAnswerIndex: 1),
//        Question(text: "Which one is true about lazy initialization of beans?", answers: ["When a lazy-initialized bean A is a dependency of non-lazy-initialized singleton bean B, bean A will still be lazy-initialized.","Singleton-scoped beans, by default, are lazy-initialized.","Prototype-scoped beans, by default, are lazy-initialized.", "All of the above."], correctAnswerIndex: 2),
//        Question(text: "The 'Autowired' annotation can be applied to the following:", answers: ["constructors","constructors and methods","fields, setters and getters","fields, constructors, methods"], correctAnswerIndex: 3),
//        Question(text: "It enables the modularization of concerns that cut across multiple types and objects.", answers: ["Model-View-Controller (MVC)", "Object-Oriented Programming (OOP)", "Aspect-Oriented Programming (AOP)", "Spring Framework"], correctAnswerIndex: 2),
//        Question(text: "In Spring AOP, different types of this include \"around\", \"before\", and \"after\".", answers: ["Aspect","Join point","Advice","Pointcut"], correctAnswerIndex: 2),
//        Question(text: "It enables support for handling components marked with AspectJ's @Aspect annotation.", answers: ["@AspectConfiguration","@EnableAspectJAutoProxy","@Component","@Configuration"], correctAnswerIndex: 1),
//        Question(text: "This wraps a single Connection that is not closed after each use.  This is not multi-threading capable.", answers: ["SingleConnectionDataSource","DriverManagerDataSource","SmartDataSource",
//            "None of the above"], correctAnswerIndex: 0),
//        Question(text: "Which one is the highest database system isolation level?", answers: ["Read committed","Read uncommitted","Repeatable reads","Serializable"], correctAnswerIndex: 3),
//        Question(text: "Spring's declarative transaction uses the __________ class in its AOP proxies in applying transactional advice.", answers: ["TransactionInterceptor","TransactionTemplate","TransactionStatusAdvice","PlatformTransactionManagerAdvisor"], correctAnswerIndex: 0),
//        Question(text: "In Spring, by default, they cause a rollback. They are preferred in Spring, because they do not force users to catch exceptions that they cannot even recover from anyway.", answers: ["unchecked exceptions","application exceptions","checked exceptions","subclasses of Exception"], correctAnswerIndex: 0),
//        Question(text: "Which one is the lowest database system isolation level?", answers: ["Read committed", "Read uncommitted", "Repeatable reads", "Serializable"], correctAnswerIndex: 1),
//        Question(text: "Which of these is an XML tag in Spring Security used in pages to determine whether its contents should be evaluated or not?", answers: ["authorize","authentication","accesscontrollist","authenticated"], correctAnswerIndex: 0),
//        Question(text: "Which of these are considered safe REST operations?", answers: ["POST","PUT","GET","DELETE"], correctAnswerIndex: 2),
//        Question(text: "It makes invoking many RESTful services simpler while enforcing REST best practices.", answers: ["HttpTemplate","RestTemplate","RestMessageProducer","HttpMessageProducer"], correctAnswerIndex: 1),
//        Question(text: "REST is ______, and usually uses the ______ protocol.", answers: ["stateful, HTTP","stateful, REST","stateless, REST","stateless, HTTP"], correctAnswerIndex: 3),
//        Question(text: "For remote services, it is more interoperable than SOAP  (which uses a lot of standards).  It only needs the HTTP system.  It also enables caching, which increases scalability.", answers: ["REST","JMS","RMI","JSON"], correctAnswerIndex: 0),
//        Question(text: "Which of these is the Spring Boot starter that you would use for a Spring REST application?", answers: ["spring-boot-starter-rest","spring-boot-starter-web-rest","spring-boot-starter-mvc-rest", "None of the above"], correctAnswerIndex: 3),
//        Question(text: "Which of these is the root of the hierarchy of Spring data access exceptions?", answers: ["AbstractException","DataException","AbstractDataException","DataAccessException"], correctAnswerIndex: 3),
//        Question(text: "___________ acts as a stereotype for the annotated class, indicating its role as a web component.  It is a specialization of @Component.", answers: ["@WebController","@WebComponent","@Web","None of the above"], correctAnswerIndex: 3),
//        Question(text:
//"""
//Which of these can be added after the code below to assist in the definition?
//        DriverManagerDataSource myDataSource = new DriverManagerDataSource();
//"""
//            , answers: ["myDataSource.setDriverClass(..);","myDataSource.setConnectionUrl(..);","myDataSource.setUserId(..);","myDataSource.setPassword(..);"], correctAnswerIndex: 3),
//        Question(text: "In this isolation level, dirty reads are prevented; while non-repeatable reads and phantom reads can occur.", answers: ["Serializable","Read uncommitted","Repeatable reads","Read committed"], correctAnswerIndex: 3),
//        Question(text: "In which of these database system isolation levels can dirty reads occur?", answers: ["Read uncommitted","Repeatable reads","Serializable","Read committed"], correctAnswerIndex: 0),
//        Question(text: "In this isolation level, dirty reads, non-repeatable reads and phantom reads are all prevented.", answers: ["Read uncommitted","Repeatable reads","Serializable","Read committed"], correctAnswerIndex: 2),
//        Question(text: "The term __________ usually represents a set of actions treated as one and undone also as one if needed.\nThe __________ mode of JDBC should be disabled so that sets of actions can be undone as one.", answers: ["JTA, concurrency","auto-commit, unit of work","transaction demarcation, rollback","unit of work, auto-commit"], correctAnswerIndex: 3),
//        Question(text: "In Spring MVC, if the return type of a method annotated with @RequestMapping is a String, what does this String represent?", answers: ["The name of the session attribute holding a View object","The name of the session attribute holding a ModelAndView object","Logical view name","The name of the request attribute holding a ModelAndView object"], correctAnswerIndex: 2),
//        Question(text: "In Spring MVC, the request  (e.g. from a browser), is handled by a ______.  The ______ usually creates a ______.  The ______ is then accessed by a ______ to create a representation.", answers: ["model, model, View, View, Controller","View, View, model, model, Controller","model, model, Controller, Controller, View","Controller, Controller, model, model, View"], correctAnswerIndex: 3),
//        Question(text: "In Spring security, which of these is the attribute of the 'intercept-url' element which is sometimes set to 'http', 'https' or 'any'?", answers: ["pattern","filters","access","requires-channel"], correctAnswerIndex: 3),
        Question(text: "In Spring Security, upon successful ______, the ______  (which is most of the time a ______ object from the UserDetailsService) is used to build the Authentication object that is stored in the SecurityContextHolder. ", answers: ["authentication, authorization service, Principal":false,"authorization, authorization service, UserDetails":false,"authorization, authentication manager, Principal":false,"authentication, principal, UserDetails":true]),
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
    //fileprivate let answers: [String]
    fileprivate let answers: [String: Bool]
    //fileprivate let correctAnswerIndex: Int
   
    //init(text: String, answers: [String], correctAnswerIndex: Int) {
    init(text: String, answers: [String: Bool]) {
        self.text = text
        self.answers = answers
        //self.correctAnswerIndex = correctAnswerIndex
    }
    
    func validateAnswer(to givenAnswer: String) -> Bool {
       // return (givenAnswer == answers[correctAnswerIndex])
        return (answers[givenAnswer]!)
    }
    
    func getText() -> String {
        return text
    }
    
//    func getAnswer() -> String {
//        return answers[correctAnswerIndex]
//    }
    
    func getChoices() -> [String] {
        return answers.keys.shuffled()
    }
    
//    func getAnswerAt(index: Int) -> String {
//        return answers[index]
//    }
}
