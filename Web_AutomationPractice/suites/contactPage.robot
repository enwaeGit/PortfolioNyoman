*** Settings ***
Documentation                       Test procedure for Account will be write in here
Resource                            ../Resources/Contact/contactKeyword.robot
Resource                            ../Resources/Login/loginKeyword.robot
Resource                            ../Resources/Register/registerKeyword.robot

*** Variables ***
#Select contact test method: All, Login, NonUser
${contact_test_method}              Login


*** Keywords ***
Start test Contact
    [Documentation]                 Starting test contact us

    #check if need to test contact us with login
    Run Keyword If                  '${order_test_method}' == 'All' or '${order_test_method}' == 'Login'            Test Contact Us With Login First
    #check if need to test contact us for non user
    Run Keyword If                  '${order_test_method}' == 'All' or '${order_test_method}' == 'NonUser'          Test Contact Us For Without Login
    
Test Contact Us With Login First
    [Documentation]                 Test contact us for user with login first

    Refresh Homepage
    Entry Register Page
    Verify Register Page
    Fill Email And Password Login   ${correct_email}                ${correct_password}
    Verify Correct Login
    Entry Contact Page
    Verify Contact Page
    Fill Message To Contact
    Submit Message To Contact
    Verify Message Success Submit


Test Contact Us For Without Login
    [Documentation]                 SKIP FIRST :: Test contact us for non user