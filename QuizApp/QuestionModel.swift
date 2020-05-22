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
        Question(text: "A bean instance in this scope lives within the lifetime of a single HTTP Session.", answers:  [
            "global session": false,
            "request":false,
            "session":true,
            "application":false]),
        
        Question(text: "Its advantages include:  faster development, lesser repetitive SQL code, and less if any at all need to deal with vendor-specific SQL and database issues.  Its disadvantages include:  a little more initial learning curve needed, and can be a little slower than SQL queries when it comes to complex queries.", answers:  [
            "AOP":false,
            "JDBC":false,
            "OXM":false,
            "ORM":true]),
        
        Question(text: "In Spring Boot, if the HSQLDB jar dependencies are on the classpath, and no database connection bean has been manually configured, what will happen?", answers: [
            "Spring Boot will auto-configure an in-memory database.":true,
            "An exception will be thrown.":false,
            "No auto-configuration will be done for HSQLDB.":false,
            "None of the above":false]),
        
        Question(text: "The presence of this annotation informs Spring Boot that it should take an opinionated approach to configuring the application.", answers: [
            "@EnableAutoConfiguration":true,
            "@AutoConfig":false,
            "@OpinionatedConfig":false,
            "@EnableSpringBootConfig":false]),
        
        Question(text: "In REST services, HTTP status return codes are used.  The HTTP status return code ____, means 'OK'.  The HTTP status return code ____, means 'No Content'.", answers: [
            "200, 204":true,
            "100, 400":false,
            "200, 400":false,
            "100, 204":false]),
        
        Question(text: "Which of these is the HTTP response code when there is an internal server error (HttpStatus.INTERNAL_SERVER_ERROR)?", answers: [
            "200":false,
            "300":false,
            "400":false,
            "500":true]),
        
        Question(text: "Which of these is the HTTP response code when the request is considered forbidden (HttpStatus.FORBIDDEN)?", answers: [
            "203":false,
            "303":false,
            "403":true,
            "503":false]),
        
        Question(text: "REST is a simpler alternative to SOAP and WSDL-based Web services.  What does REST stand for?", answers: ["Representational State Transfer":true, "Representational Entity State Transformation":false, "Relational State Transfer":false, "Relational Entity State Transformation":false]),
        
        Question(text: "In REST services, what does CRUD mean?", answers: ["central, representational, uniform, delivery":false, "create, read, update, delete":true, "component, resource, unified, data":false,"component, representational, unified, dataQuestion":false]),
        
        Question(text: "To enhance security when working with REST, the 'requires-channel' attribute of the '<intercept-url>' element can be set to this value to enforce HTTPS channel security", answers: ["ssl":false, "https":true, "tls/ssl":false, "tls/https":false]),
        
        Question(text: "Which of these is a method used in customizing bean lifecycles, and is found inside the DisposableBean interface?", answers: ["postConstruct()":false, "afterPropertiesSet()":false, "destroy()":true, "onInit()":true]),
        
        Question(text: "Which of these is a valid way of configuring the ContextLoaderListener?", answers: ["<servlet-class>org.springframework.web.context.ContextLoaderListener</servlet-class>":false,"<listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>":true,"<param-name>org.springframework.web.context.ContextLoaderListener</param-name>":false,"<bean name=\"root\" class=\"org.springframework.web.context.ContextLoaderListener\">":false]),
        
        Question(text: "Which one is true about lazy initialization of beans?", answers: ["When a lazy-initialized bean A is a dependency of non-lazy-initialized singleton bean B, bean A will still be lazy-initialized.":false,"Singleton-scoped beans, by default, are lazy-initialized.":false,"Prototype-scoped beans, by default, are lazy-initialized.":true, "All of the above.":false]),
        
        Question(text: "The 'Autowired' annotation can be applied to the following:", answers: [
            "constructors":false,
            "constructors and methods":false,
            "fields, setters and getters":false,
            "fields, constructors, methods":true]),
        
        Question(text: "It enables the modularization of concerns that cut across multiple types and objects.", answers: ["Model-View-Controller (MVC)":false, "Object-Oriented Programming (OOP)":false, "Aspect-Oriented Programming (AOP)":true, "Spring Framework":false]),
        
        Question(text: "In Spring AOP, different types of this include \"around\", \"before\", and \"after\".", answers: [
            "Aspect":false,
            "Join point":false,
            "Advice":true,
            "Pointcut":false]),
        
        Question(text: "It enables support for handling components marked with AspectJ's @Aspect annotation.", answers: [
            "@AspectConfiguration":false,
            "@EnableAspectJAutoProxy":true,
            "@Component":false,
            "@Configuration":false]),
        
        Question(text: "This wraps a single Connection that is not closed after each use.  This is not multi-threading capable.", answers: [
            "SingleConnectionDataSource":true,
            "DriverManagerDataSource":false,
            "SmartDataSource":false,
            "None of the above":false]),
        
        Question(text: "Which one is the highest database system isolation level?", answers: [
            "Read committed":false,
            "Read uncommitted":false,
            "Repeatable reads":false,
            "Serializable":true]),
        
        Question(text: "Spring's declarative transaction uses the __________ class in its AOP proxies in applying transactional advice.", answers: [
            "TransactionInterceptor":true,
            "TransactionTemplate":false,
            "TransactionStatusAdvice":false,
            "PlatformTransactionManagerAdvisor":false]),
        
        Question(text: "In Spring, by default, they cause a rollback. They are preferred in Spring, because they do not force users to catch exceptions that they cannot even recover from anyway.", answers: [
            "unchecked exceptions":true,
            "application exceptions":false,
            "checked exceptions":false,
            "subclasses of Exception":false]),
        
        Question(text: "Which one is the lowest database system isolation level?", answers: [
            "Read committed":false,
            "Read uncommitted":true,
            "Repeatable reads":false,
            "Serializable":false]),
        
        Question(text: "Which of these is an XML tag in Spring Security used in pages to determine whether its contents should be evaluated or not?", answers: [
            "authorize":true,
            "authentication":false,
            "accesscontrollist":false,
            "authenticated":false]),
        
        Question(text: "Which of these are considered safe REST operations?", answers: [
            "POST":false,
            "PUT":false,
            "GET":true,
            "DELETE":false]),
        
        Question(text: "It makes invoking many RESTful services simpler while enforcing REST best practices.", answers: [
            "HttpTemplate":false,
            "RestTemplate":true,
            "RestMessageProducer":false,
            "HttpMessageProducer":false]),
        
        Question(text: "REST is ______, and usually uses the ______ protocol.", answers: [
            "stateful, HTTP":false,
            "stateful, REST":false,
            "stateless, REST":false,
            "stateless, HTTP":true]),
        
        Question(text: "For remote services, it is more interoperable than SOAP  (which uses a lot of standards).  It only needs the HTTP system.  It also enables caching, which increases scalability.", answers: [
            "REST":true,
            "JMS":false,
            "RMI":false,
            "JSON":false]),
        
        Question(text: "Which of these is the Spring Boot starter that you would use for a Spring REST application?", answers: [
            "spring-boot-starter-rest":false,
            "spring-boot-starter-web-rest":false,
            "spring-boot-starter-mvc-rest":false,
            "None of the above":true]),
        
        Question(text: "Which of these is the root of the hierarchy of Spring data access exceptions?", answers: [
            "AbstractException":false,
            "DataException":false,
            "AbstractDataException":false,
            "DataAccessException":true]),
        
        Question(text: "___________ acts as a stereotype for the annotated class, indicating its role as a web component.  It is a specialization of @Component.", answers: [
            "@WebController":false,
            "@WebComponent":false,
            "@Web":false,
            "None of the above":true]),
        
        Question(text:
"""
Which of these can be added after the code below to assist in the definition?
        DriverManagerDataSource myDataSource = new DriverManagerDataSource();
"""
            , answers: [
                "myDataSource.setDriverClass(..);":false,
                "myDataSource.setConnectionUrl(..);":false,
                "myDataSource.setUserId(..);":false,
                "myDataSource.setPassword(..);":true]),
        
        Question(text: "In this isolation level, dirty reads are prevented; while non-repeatable reads and phantom reads can occur.", answers:[
            "Serializable":false,
            "Read uncommitted":false,
            "Repeatable reads":false,
            "Read committed":true]),
        
        Question(text: "In which of these database system isolation levels can dirty reads occur?", answers: [
            "Read uncommitted":true,
            "Repeatable reads":false,
            "Serializable":false,
            "Read committed":false]),
        
        Question(text: "In this isolation level, dirty reads, non-repeatable reads and phantom reads are all prevented.", answers: [
            "Read uncommitted":false,
            "Repeatable reads":false,
            "Serializable":true,
            "Read committed":false]),
        
        Question(text: "The term __________ usually represents a set of actions treated as one and undone also as one if needed.\nThe __________ mode of JDBC should be disabled so that sets of actions can be undone as one.", answers: [
            "JTA, concurrency":false,
            "auto-commit, unit of work":false,
            "transaction demarcation, rollback":false,
            "unit of work, auto-commit":true]),
        
        Question(text: "In Spring MVC, if the return type of a method annotated with @RequestMapping is a String, what does this String represent?", answers: [
            "The name of the session attribute holding a View object":false,
            "The name of the session attribute holding a ModelAndView object":false,
            "Logical view name":true,
            "The name of the request attribute holding a ModelAndView object":false]),
        
        Question(text: "In Spring MVC, the request  (e.g. from a browser), is handled by a ______.  The ______ usually creates a ______.  The ______ is then accessed by a ______ to create a representation.", answers: [
            "model, model, View, View, Controller":false,
            "View, View, model, model, Controller":false,
            "model, model, Controller, Controller, View":false,
            "Controller, Controller, model, model, View":true]),
        
        Question(text: "In Spring security, which of these is the attribute of the 'intercept-url' element which is sometimes set to 'http', 'https' or 'any'?", answers: [
            "pattern":false,
            "filters":false,
            "access":false,
            "requires-channel":true]),
       
        Question(text: "In Spring Security, upon successful ______, the ______  (which is most of the time a ______ object from the UserDetailsService) is used to build the Authentication object that is stored in the SecurityContextHolder.", answers: [
            "authentication, authorization service, Principal":false,
            "authorization, authorization service, UserDetails":false,
            "authorization, authentication manager, Principal":false,
            "authentication, principal, UserDetails":true]),
        
        Question(text: "A bean annotated with 'Session' scope is created:", answers: ["Each time the bean is referenced":false,
                                                                                      "Once per user session":true,
                                                                                      "Once per request":false,
                                                                                      "All of the above":false]),
        
        Question(text: "Which is the best practice?", answers: [
            "@ComponentScan({\"org\",\"com\"})":false,
            "@ComponentScan ({com.bank.app})":false,
            "@ComponentScan(\"com\")":false,
            "@ComponentScan ({\"com.bank.app.repository\", \"com.bank.app.service\", \"com.bank.app.controller\"})":true]),
        
        Question(text: "Which of these statements is true?", answers: [
            "Spring beans are managed by the Spring IoC container":false,
            "Spring beans are instantiated, assembled, and otherwise managed by a Spring IoC container":false,
            "Spring beans are simple POJOs":false,
            "All of the above":true]),
        
        Question(text: "How can you configured a bean to be lazily initialized?", answers: [
            "@Scope(\"Lazy\")":false,
            "@Lazy(\"true\")":false,
            "@Lazy(false)":false,
            "@Lazy":true]),
        
        Question(text: "Spring can be configured via:", answers: [
        "Java":false,
        "XML":false,
        "Only XML":false,
        "Java and XML":true]),
        
        Question(text: "How can you disable some Autoconfiguration classes if they don't suit your needs?", answers: [
            "@EnableAutoConfiguration(exclude = DataSourceAutoConfiguration.class)":true,
            "@ExcludeAutoConfiguration(exclude = DataSourceAutoConfiguration.class)":false,
            "@EnableAutoConfiguration(provided = DataSourceAutoConfiguration.class)":false,
            "@ExcludeAutoConfiguration(provided = DataSourceAutoConfiguration.class)":false]),
        
        Question(text: "Which of these is used by Spring Boot for all internal logging  (while leaving the underlying log implementation open)?", answers: [
            "Java Util Logging":false,
            "Log4J2":false,
            "Logback":false,
            "Commons Logging":true]),
        
        Question(text: "In securing applications, before checking for ______, the identity of the ______ should already been established by the ______ process.", answers: [
            "authentication, system, authorization":false,
            "authentication, server, login":false,
            "authorization, principal, authentication":true,
            "authorization, security provider, login":false]),
        
        Question(text: "This is a Spring framework, designed to simplify the bootstrapping and development of a new Spring application. The framework takes an opinionated approach to configuration, freeing developers from the need to define boilerplate configuration.", answers: [
            "Spring IO":false,
            "Spring Bootstrap":false,
            "Spring Configuration":false,
            "Spring Boot":true]),
        
        Question(text: "RPC mechanisms like SOAP Web Services are centered on ______.  ______ is a popular alternative, and is centered on ______.", answers: [
            "actions and processes, JMS, information and resources":false,
            "actions and processes, REST, information and resources":true,
            "information and resources, JMS, actions and processes":false,
            "information and resources, REST, actions and processes":false]),
       
        Question(text: "In Spring's web support, this annotation indicates that a method parameter is bound to a URI template variable.", answers: [
            "@RequestBody":false,
            "@RequestMapping":false,
            "@RequestMethod":false,
            "@PathVariable":true]),
        
        Question(text: "In Spring security, which of these is the attribute of the 'intercept-url' element which is used in combination with the 'pattern' attribute to match an incoming request?  Examples of its values are 'DELETE', and 'POST'.", answers: [
            "method":true,
            "filters":false,
            "access":false,
            "requires-channel":false]),
        
        Question(text: "It handles the translation of view names and JSP pages.", answers: [
            "BeanNameViewResolver":false,
            "InternalResourceViewResolver":true,
            "UrlBasedViewResolver":false,
            "JSPBasedViewResolver":false]),

        Question(text: "Which of these maps incoming web requests to appropriate handlers?", answers: [
            "ViewResolver":false,
            "HandlerMapping":true,
            "RequestHandler":false,
            "FlashMapManager":false]),
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
