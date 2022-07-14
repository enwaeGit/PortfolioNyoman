*** Settings ***
Documentation                       Test procedure for Register will be write in here
Resource                            ../Resources/Register/registerKeyword.robot
Resource                            ../Resources/Homepage/homepageKeyword.robot

*** Variables ***
${register_url}                     http://automationpractice.com/index.php?controller=authentication&back=my-account
#Select register test method: All, Unregister, Register, Empty
${register_test_method}             All       
${new_email}                        abc_xyz@gmail.com
${old_email}                        abcd@gmail.com  
#Select input user test method: Correct, Uncomplete
${input_user_method}                Correct   

*** Keywords ***
Start test Register
    [Documentation]                 Starting test Register
    
    #check if need to test unregister email
    Run Keyword If                  '${register_test_method}' == 'All' or '${register_test_method}' == 'Unregister'             Test With Unregistered Email
    #check if need to test register email
    Run Keyword If                  '${register_test_method}' == 'All' or '${register_test_method}' == 'Register'               Test With Registered Email
    #check if need to test empty email
    Run Keyword If                  '${register_test_method}' == 'All' or '${register_test_method}' == 'Empty'                  Test With Empty Email

Test With Unregistered Email
    [Documentation]                 Test with unregister method; it's mean sign up should be success  

    Refresh Homepage
    Entry Register Page
    Verify Register Page
    Fill Email To Register          ${new_email}
    Verify New Email Register  
    Run Keyword If                  '${input_user_method}' == 'Correct'                                                         Fill Correct Information To Create An Account  
    Run Keyword If                  '${input_user_method}' == 'Uncomplete'                                                      Fill Uncomplete Information To Create An Account  

Test With Registered Email
    [Documentation]                 Test with register method; it's mean sign up should be fail  

    Refresh Homepage
    Entry Register Page
    Verify Register Page
    Fill Email To Register          ${old_email}
    Verify Old Email Register

Test With Empty Email
    [Documentation]                 Test with empty email, only click submit

    Refresh Homepage
    Entry Register Page
    Verify Register Page
    Fill Email To Register          None
    Verify Old Email Register