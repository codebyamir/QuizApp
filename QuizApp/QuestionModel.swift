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
            "None of these":false]),
        
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
        
        Question(text: "REST is a simpler alternative to SOAP and WSDL-based Web services.  What does REST stand for?", answers: [
            "Representational State Transfer":true,
            "Representational Entity State Transformation":false,
            "Relational State Transfer":false,
            "Relational Entity State Transformation":false]),
        
        Question(text: "In REST services, what does CRUD mean?", answers: [
            "central, representational, uniform, delivery":false,
            "create, read, update, delete":true,
            "component, resource, unified, data":false,
            "component, representational, unified, dataQuestion":false]),
        
        Question(text: "To enhance security when working with REST, the 'requires-channel' attribute of the '<intercept-url>' element can be set to this value to enforce HTTPS channel security", answers: [
            "ssl":false,
            "https":true,
            "tls/ssl":false,
            "tls/https":false]),
        
        Question(text: "Which of these is a method used in customizing bean lifecycles, and is found inside the DisposableBean interface?", answers: [
            "postConstruct()":false,
            "afterPropertiesSet()":false,
            "destroy()":true,
            "onInit()":false]),
        
        Question(text: "Which of these is a valid way of configuring the ContextLoaderListener?", answers: [
            "<servlet-class>org.springframework.web.context.ContextLoaderListener</servlet-class>":false,
"<listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>":true,
"<param-name>org.springframework.web.context.ContextLoaderListener</param-name>":false,"<bean name=\"root\" class=\"org.springframework.web.context.ContextLoaderListener\">":false]),
        
        Question(text: "Which one is true about lazy initialization of beans?", answers: [
            "When a lazy-initialized bean A is a dependency of non-lazy-initialized singleton bean B, bean A will still be lazy-initialized.":false,
            "Singleton-scoped beans, by default, are lazy-initialized.":false,
            "Prototype-scoped beans, by default, are lazy-initialized.":true,
            "All of these":false]),
        
        Question(text: "The 'Autowired' annotation can be applied to the following:", answers: [
            "constructors":false,
            "constructors and methods":false,
            "fields, setters and getters":false,
            "fields, constructors, methods":true]),
        
        Question(text: "It enables the modularization of concerns that cut across multiple types and objects.", answers: [
            "Model-View-Controller (MVC)":false,
            "Object-Oriented Programming (OOP)":false,
            "Aspect-Oriented Programming (AOP)":true,
            "Spring Framework":false]),
        
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
            "None of these":false]),
        
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
            "spring-boot-starter-web":true]),
        
        Question(text: "Which of these is the root of the hierarchy of Spring data access exceptions?", answers: [
            "AbstractException":false,
            "DataException":false,
            "AbstractDataException":false,
            "DataAccessException":true]),
        
        Question(text: "___________ acts as a stereotype for the annotated class, indicating its role as a web component.  It is a specialization of @Component.", answers: [
            "@WebController":false,
            "@WebComponent":false,
            "@Web":false,
            "@Controller":true]),
        
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
                                                                                      "All of these":false]),
        
        Question(text: "Which is the best practice?", answers: [
            "@ComponentScan({\"org\",\"com\"})":false,
            "@ComponentScan ({com.bank.app})":false,
            "@ComponentScan(\"com\")":false,
            "@ComponentScan ({\"com.bank.app.repository\", \"com.bank.app.service\", \"com.bank.app.controller\"})":true]),
        
        Question(text: "Which of these statements is true?", answers: [
            "Spring beans are managed by the Spring IoC container":false,
            "Spring beans are instantiated, assembled, and otherwise managed by a Spring IoC container":false,
            "Spring beans are simple POJOs":false,
            "All of these":true]),
        
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
        
        Question(text: "It is described as a modularization of a concern that cuts across multiple classes or across an entire application.", answers: [
            "Aspect":true,
            "Framework":false,
            "Service-Oriented Architecture":false,
            "Subclassing or Java Inheritance":false]),
    
        Question(text: "Objects passed to and returned from RestTemplate methods are converted to and from HTTP messages by this.", answers: [
                  "MessageConverter":false,
                  "MessagePropertyEditor":false,
                  "HttpMessageConverter":true,
                  "HttpMessagePropertyEditor":false]),
        
        Question(text: "Which of these dispatches requests to controllers?", answers: [
            "ViewResolver":false,
            "RequestDispatcher":false,
            "DispatcherServlet":true,
            "FlashMapManager":false]),
        
        Question(text: "Which of these is a method used in customizing bean lifecycles, and is found inside the InitializingBean interface?", answers: [
            "postConstruct()":false,
            "afterPropertiesSet()":true,
            "init()":false,
            "onInit()":false]),
        
        Question(text: "Which of these annotations, determine if a bean is registered or not, based on this annotation's value?", answers: [
            "@BeansProfile":false,
            "@Profile":true,
            "@BeanProfile":false,
            "@Config":false]),
        
        Question(text: "This AOP advice can choose not to proceed to the join point and return its own return value.", answers: [
                  "Before advice":false,
                  "Around advice":true,
                  "After throwing advice":false,
                  "After returning advice":false]),
    
        Question(text: "Which of these is an XML tag in Spring Security that allows access to the current Authentication object stored in the security context?", answers: [
                         "accesscontrollist":false,
                         "authenticate":false,
                         "authentication":true,
                         "authorize":false]),
    
        Question(text:
"""
What does this code below return?

return this.jdbcTemplate.queryForObject("select name from Account where name like ?",
, new Object[]{"JOHN%"}, new RowMapper<Account>() {
  public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
    return new Account(rs.getString("name"));
  }
}
);
"""
        , answers: [
        "A List<Account> object.":false,
        "An Account object":true,
        "An Account[] object":false,
        "A RowMapper<Account> object":false]),
        
        Question(text: "Which of these is true regarding Spring Boot's build outputs?", answers: [
                                "The build output file of Spring Boot can be a jar.":false,
                                "The build output file of Spring Boot can be a war.":false,
                                "For web applications, a war is outputted from Spring Boot so that it can be deployed on standalone servers.":false,
                                "All are true":true]),
        
        Question(text: "The use of this makes it easier to mock and/or test Java classes.", answers: [
                                       "Spring AOP":false,
                                       "Java interfaces":true,
                                       "Template Design Pattern":false,
                                       "Spring Expression Language (SpEL)":false]),

        Question(text: "Which of these can be used in loading a root application context in a web application?", answers: [
                                              "BeanFactoryPostProcessor":false,
                                              "WebApplicationContext":false,
                                              "DispatcherServlet":false,
                                              "ContextLoaderListener":true]),

        Question(text: "In Spring MVC, it is usually prepared inside controller methods, and carries information the view needs to create the view output.", answers: [
            "model":true,
            "request parameters":false,
            "theme":false,
            "locale":false]),
    
        Question(text: "Which of these is the order of the database system isolation levels, from lowest to the highest?", answers: [
            "Read uncommitted, Repeatable reads, Serializable, Read committed":false,
            "Read committed, Repeatable reads, Serializable, Read uncommitted":false,
            "Read uncommitted, Read committed, Repeatable reads, Serializable":true,
            "Repeatable reads, Read uncommitted, Read committed, Serializable":false]),
        
        Question(text: "Which of these design patterns is Spring's JdbcTemplate based on?", answers: [
            "Command":false,
            "State":false,
            "Template":true,
            "Strategy":false]),
        
        Question(text: "What is an Aspect?", answers: [
            "A module that encapsulate pointcuts and advice":true,
            "An expression that selects on or more join point":false,
            "Code to be executed at each selected join point":false,
            "Technique by which aspect are combined with main code.":false]),
       
        
        Question(text: "During which phase can BeanPostProcessor modify the bean initialization?", answers: [
                   "BeforeInit":false,
                   "AfterInit":false,
                   "Postconstruct":false,
                   "BeforeInit & AfterInit":true]),
        
        Question(text: "@SpringBootApplication is equivalent to which annotation?", answers: [
                          "@Configuration, @ComponentScan, @EnableAutoConfiguration":true,
                          "@SpringBootConfiguration, @ComponentScan, @EnableAutoConfiguration":false,
                          "@EnableJpaReposorities, @ComponentScan, @EnableAutoConfiguration, @Configuration":false,
                          "None of these":false]),
      
        Question(text: "When a bean is not associated to the profile using @Profile:", answers: [
            "The bean is available on each profile":true,
            "The bean is only available on default profile":false,
            "The bean must be implicitly associated to the profile using @Profile":false,
            "None of these":false]),
        
        
        Question(text: "Spring application contexts can be bootstrapped in:", answers: [
                   "JUnit system test":false,
                   "Web Application":false,
                   "Standalone application":false,
                   "All of these":true]),
        
        Question(text: "How can you create an application context from multiple files, which annotation can you used to combined multiple configuration files?", answers: [
                          "@Import(A.class, B.class)":false,
                          "@Include(A.class, B.class)":false,
                          "@Imports(A.class, B.class)":false,
                          "@Import({A.class, B.class})":true]),
       
        Question(text: "Which statement is invalid for the destruction phase of Spring bean lifecycle?", answers: [
            "Any registered @PreDestroy method are invoked":false,
            "Beans released for the garbage collector to destroy":false,
            "It will only call the @PreDestroy method when the application is killed.":true,
            "All are valid":false]),
        
        Question(text:
"""
________  expresses the usage of an EntityManager and its associated persistence context.
This is also the annotation in the blank in the code below.
________
private EntityManager entityManager;
"""
            ,answers: [
                   "@PersistenceUnit":false,
                   "@PersistenceContext":true,
                   "@EntityManagerResource":false,
                   "@Entity":false]),
      
        Question(text: "Which of these is the JdbcTemplate callback interface described below? It extracts values from each row of a ResultSet.", answers: [
                   "PreparedStatementCreator":false,
                   "CallableStatementCreator":false,
                   "RowCallbackHandler":true,
                   "None of these":false]),
        
        Question(text: "Which of these can enable support for Spring Security's @Secured?", answers: [
            "<secured-annotations/>":false,
            "<method-security/>":false,
            "<global-method-security secured-annotations=\"enabled\" />":true,
            "It is enabled by default.  No additional declaration is needed to enable it.":false]),
        
        Question(text: "Which of these are true about Spring MVC view resolvers  (implementations of the ViewResolver interface)?", answers: [
                   "They are actual servlets (it inherits from the HttpServlet base class).":false,
                   "They resolve themes for the web application to have features like personalized layouts.":false,
                   "They resolve logical String-based view names to actual View types.":true,
                   "They map exceptions to views.":false]),
        
        Question(text: "It can be declared in the web.xml.  It provides the link between the web.xml and the application context.  It delegates its Filter methods to beans.", answers: [
            "DispatcherServlet":false,
            "Filter":false,
            "FilterChainProxy":false,
            "DelegatingFilterProxy":true]),
      
        Question(text: "In Spring security, which of these is the attribute of the 'intercept-url' element which is a comma-separated list of the security configuration attributes (such as role names)?", answers: [
                  "pattern":false,
                  "filters":false,
                  "access":true,
                  "requires-channel":false]),
        
        Question(text: "Martin Fowler came up with the name Dependency Injection, to rename which principle?", answers: [
                        "Abstract Factory Design":false,
                        "Inversion of Control":true,
                        "Configuration Management":false,
                        "CGLIB-based Method Injection":false]),
    
        Question(text:
"""
Which of these can be used so that the @Transactional in the code below will work?

  @Transactional
  public class MyServiceImpl implements MyService {}
"""
            ,answers: [
        "@EnableTransaction":false,
        "@TransactionAnnotationDriven":false,
        "@EnableTransactionManagement":true,
        "None. It will work as is, and without any additional configuration.":false]),
    
        Question(text: "Which application factor does inversion of control help lessen?", answers: [
                             "Dependency":true,
                             "Redundant Processing":false,
                             "Limitations brought by waterfall sequential design process":false,
                             "Runtime locking and deadlock issues":false]),
        
        Question(text: "What does the @EnableAspectJAutoProxy do?", answers: [
                                    "Enables Spring AOP":false,
                                    "Enables @AspectJ support":true,
                                    "There is no @EnableAspectJAutoProxy annotation":false,
                                    "None of these":false]),
        
        Question(text: "Which of these is true regarding Spring transactions?", answers: [
                                           "@Transactional annotation works only on public methods":false,
                                           "@Transactional annotation on an interface (or an interface method) only works if you are using class-based proxies.":false,
                                           "@Transactional annotation's default propagation type is PROPAGATION_REQUIRED":true,
                                           "All of these":false]),
      
        Question(text: "It is a stereotype annotation that is itself annotated with @Controller and @ResponseBody.  As compared to controllers, classes that are annotated with this, have their @RequestMapping methods assume @ResponseBody semantics by default.", answers: [
                                          "@RestComponent":false,
                                          "@RestController":true,
                                          "@ResponseBodyController":false,
                                          "@ResponseBodyComponent":false]),
      
        Question(text: "In Spring MVC, some of the values returned by _____________ are:  a String, a View, or a ModelAndView.", answers: [
                                                 "View Resolvers methods":false,
                                                 "HandlerMapping methods":false,
                                                 "Controller handler methods":true,
                                                 "Model methods":false]),
      
        Question(text:
"""
Which of these can fill the blank below, to protect access to '/driver'?

    protected configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()._______________("/driver").hasRole("DRIVER");
    }
"""
            ,answers: [
                "withUrl":false,
                "on":false,
                "match":false,
                "mvcMatchers":true]),
    
        Question(text: "The ____________ is the central interface within a Spring application for providing configuration information to the application. It is read-only at run time, but can be reloaded if necessary and supported by the application. A number of classes implement the ____________ interface, allowing for a variety of configuration options and types of applications.", answers: [
            "@Configuration":false,
            "ApplicationContext":true,
            "Bean":false,
            "ConnectionFactory":false]),
        
        
        Question(text:
"""
________ can be extended to create a repository.  Below is a way to activate it.

@Configuration
________  (basePackages="myPackage.myInstantRepos")
public class MyInstantRepoConfiguration {}
"""
            , answers: [
               "JpaRepository, @EnableJpaRepositories":true,
               "JpaTemplate, @EnableJpaRepositories":false,
               "JpaTemplate, @EnableJpaRepository":false,
               "JpaTemplate, @EnableSpringRepositories":false]),
      
        Question(text: "______ in a class annotated with ______ enables MVC Java config.", answers: [
        "@EnableMVC, @Configuration":false,
        "@EnableMVC, @WebConfiguration":false,
        "@EnableWebMVC, @WebConfiguration":false,
        "@EnableWebMVC, @Configuration":true]),
        
        Question(text: "Which of these is true about bean scopes?", answers: [
               "These scopes are supported out of the box:  singleton, prototype, request, session, application, websocket.":true,
               "The default scope is prototype.":false,
               "You can override the default scope with the @BeanScope annotation.":false,
               "You can override the default scope with the 'scope' attribute of the @Bean annotation.":false]),
        
        Question(text: "In Spring Security, which of these is true?", answers: [
                      "<filter-chain> is used to set up security filter chains.  It includes an attribute where you can specify the filters that you prefer to use.":false,
                      "FilterChainProxy implements Java Filter interface":false,
                      "<intercept-url> can be used to define URL patterns and how they should be handled":false,
                      "All of these":true]),
        
        Question(text: "________ is an implementation of ________ for a single JPA EntityManagerFactory. It binds a JPA EntityManager from the mentioned factory to the thread.", answers: [
                     "JpaTemplate, Template":false,
                     "JpaTransactionManager, PlatformTransactionManager":true,
                     "JpaDataSource, DataSource":false,
                     "JpaEntity, Entity":false]),
        
        Question(text: "This is a predicate that matches join points.  The concept of join points as matched by expressions of this kind is central to AOP.", answers: [
                            "Aspect":false,
                            "Pointcut":true,
                            "Advice":false,
                            "None of these":false]),
    
        Question(text:
"""
Which of these is true regarding the code below?
<bean id="myBean" class="org.MyBean">
     <property name="person" value="john"/>
     <property name="age" value="10"/>
     <property name="project" value="project1"/>
</bean>
"""
                , answers: [
                    "There must be a bean named 'john' in the container.":false,
                    "If the class has a property named 'age', and it is an 'int', it will be populated with the value 10.":true,
                    "There must be a bean named 'project1' in the container.":false,
                    "All of these":false]),
    
        Question(text: "Which ones are true in relation to the @Qualifier annotation?", answers: [
            "When @Qualifier is specified, the container will autowire the annotated variable, whether @Autowired is specified or not.":false,
            "The bean name is considered a default qualifier value.":true,
            "@Qualifier annotations applied on collections  (e.g. Set) are ignored.":false,
            "Custom qualifier annotations are built using Spring's @Qualifier.  JSR 330's @Qualifier cannot be used.":false]),
        
        Question(text: "Which of these is true about scopes?", answers: [
        "When the 'singleInstance' attribute is set to 'false', singleton scoped beans can have more than one object instance per container.":false,
        "The 'request' scope is valid only in a web-aware Spring ApplicationContext.  Each HTTP request will have up to 1 object instance of the concerned bean in this scope.":true,
        "If a bean is in 'session' scope, there will be only 1 object instance of this bean in the Spring IoC container.":false,
        "None of these":false]),
        
        Question(text: "Which of these is true about Spring AOP?", answers: [
               "@AspectJ support can be enabled using @EnableAspectJ annotation":false,
               "It is not possible to have @AspectJ support if you are using DTD instead of schema Spring configuration style.":false,
               "To work with @AspectJ, the following jar must be in the classpath:  aspectjweaver.jar.":true,
               "All of these":false]),
        
        Question(text: "Which of these is true regarding Spring AOP CGLIB proxying?", answers: [
                      "'final' methods cannot be advised":true,
                      "In addition to the spring-core jar, the CGLIB jar is needed to be added on the classpath":false,
                      "proxy-target-class=\"cglib\" forces the use of CGLIB":false,
                      "None of these":false]),
    
        Question(text: "This activity is the linking of aspects with other application types or objects to create an advised object.  Spring AOP performs this at runtime.", answers: [
                            "Dependency Injection":false,
                            "Spring configuration validation":false,
                            "Autowiring":false,
                            "Weaving":true]),
        
        Question(text: "Which of these classes assist in programmatic transaction demarcation and transaction exception handling? It executes codes within a transaction using the TransactionCallback interface.", answers: [
            "TransactionInterceptor":false,
            "TransactionTemplate":true,
            "TransactionStatus":false,
            "PlatformTransactionManager":false]),
        
        Question(text: "The application server manages ________ through the JTA.  ________ cannot work across multiple transactional resources. In the past, a common way to use ________ was through EJB CMT (Container Managed Transaction).", answers: [
            "global transactions, local transactions, local transactions":false,
            "local transactions, local transactions, global transactions":false,
            "global transactions, local transactions, global transactions":true,
            "local transactions, global transactions, local transactions":false]),
        
        Question(text: "In Spring Web, this is can be used to have the request body read and deserialized into an Object through an HttpMessageConverter.", answers: [
                   "@ResponseBody":false,
                   "@RequestBody":true,
                   "@RequestMapping":false,
                   "@RequestMethod":false]),
        
        Question(text: "In Spring security, which of these is the attribute of the 'intercept-url' element which can cause any matching request to bypass the filter chain entirely?", answers: [
                          "pattern":false,
                          "filters":true,
                          "access":false,
                          "requires-channel":false]),
    
        Question(text: "Which of these show a proper ordering of Spring Security filters?", answers: [
            "ChannelProcessingFilter, FilterSecurityInterceptor, SecurityContextPersistenceFilter":false,
            "ExceptionTranslationFilter, RememberMeAuthenticationFilter, ChannelProcessingFilter":false,
            "BasicAuthenticationFilter, AnonymousAuthenticationFilter, FilterSecurityInterceptor":true,
            "RememberMeAuthenticationFilter, UsernamePasswordAuthenticationFilter, ChannelProcessingFilter":false]),
      
        Question(text: "______ and ______ can be used to secure service layer ______.", answers: [
                  "@Secure, @Authorize, classes":false,
                  "@Secured, @PreAuthorize, methods":true,
                  "@Secure, @Authorize, methods":false,
                  "@Secure, @PreAuthorize, classes":false]),
       
        Question(text: "Which of these is true about AOP and Spring AOP?", answers: [
            "AOP helps unrelated codes be kept outside of the advised classes.":false,
            "AOP helps code be written once, reused, and not duplicated in many places.":false,
            "Spring AOP can be configured in two ways:  by XML and by annotations.":false,
            "All of the above":true]),
        
        Question(text: "An instance of it is associated with a persistence context.  It is an API that has methods for interacting with the persistence context, such as persist, update, delete, etc.", answers: [
                   "PersistenceUnit":false,
                   "PersistenceContext":false,
                   "EntityManager":true,
                   "Entity":false]),
       

    
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
