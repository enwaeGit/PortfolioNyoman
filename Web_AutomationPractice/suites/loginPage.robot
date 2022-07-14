*** Settings ***
Documentation                       Test procedure for Login will be write in here
Resource                            ../Resources/Login/loginKeyword.robot
Resource                            ../Resources/Register/registerKeyword.robot


*** Variables ***
#Select login test method: All, Correct, Empty, InvEmail, InvPassword, ForgetPass
${login_test_method}                All
${correct_email}                    abcd_efgh_xyz@gmail.com
${correct_password}                 12345
${invalid_email}                    nnnnn@gmail.com
${invalid_password}                 qqqqq

*** Keywords ***
Start test Login
    [Documentation]                 Starting test Login

    #check if need to test correct login
    Run Keyword If                  '${login_test_method}' == 'All' or '${login_test_method}' == 'Unregister'           Test With Correct Login
    #check if need to test empty filled
    Run Keyword If                  '${login_test_method}' == 'All' or '${login_test_method}' == 'Register'             Test With Empty Filled
    #check if need to test invalid email
    Run Keyword If                  '${login_test_method}' == 'All' or '${login_test_method}' == 'Empty'                Test With Invalid Email
    #check if need to test invalid password
    Run Keyword If                  '${login_test_method}' == 'All' or '${login_test_method}' == 'Empty'                Test With Invalid Password
    #check if need to test click forget password
    Run Keyword If                  '${login_test_method}' == 'All' or '${login_test_method}' == 'Empty'                Test Forget Password

Test With Correct Login
    [Documentation]                 Test correct data to login; 

    Refresh Homepage
    Entry Register Page
    Verify Register Page
    Fill Email And Password Login   ${correct_email}                ${correct_password}
    Verify Correct Login
    Logout Account

Test With Empty Filled
    [Documentation]                 Test login with empty data

    Refresh Homepage
    Entry Register Page
    Verify Register Page
    Fill Email And Password Login   None                            None
    Verify Incorrect Login


Test With Invalid Email
    [Documentation]                 Test login with invalid email

    Refresh Homepage
    Entry Register Page
    Verify Register Page
    Fill Email And Password Login   ${invalid_email}                ${correct_password}
    Verify Incorrect Login

Test With Invalid Password
    [Documentation]                 Test login with valid email but invalid password

    Refresh Homepage
    Entry Register Page
    Verify Register Page
    Fill Email And Password Login   ${correct_email}                ${invalid_password}
    Verify Incorrect Login

Test Forget Password
    [Documentation]                 Test when click forget password

    Refresh Homepage
    Entry Register Page
    Verify Register Page
    Proccess Forget Password        ${correct_email}