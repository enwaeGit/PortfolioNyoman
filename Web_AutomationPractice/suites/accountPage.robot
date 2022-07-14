*** Settings ***
Documentation                       Test procedure for Account will be write in here
Resource                            ../Resources/Account/accountKeyword.robot
Resource                            ../Resources/Login/loginKeyword.robot
Resource                            ../Resources/Register/registerKeyword.robot


*** Keywords ***
Start test Account
    [Documentation]                 Starting test account

    Refresh Homepage
    Entry Register Page
    Verify Register Page
    Fill Email And Password Login   ${correct_email}                ${correct_password}
    Verify Correct Login
    Entry Account Info