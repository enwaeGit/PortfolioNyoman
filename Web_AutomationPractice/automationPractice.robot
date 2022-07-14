*** Settings ***
Documentation                       Test Automation with POM method
Library                             SeleniumLibrary
Library                             BuiltIn
Resource                            ./suites/main.robot
Resource                            ./suites/homepage.robot
Resource                            ./suites/registerPage.robot
Resource                            ./suites/loginPage.robot
Resource                            ./suites/orderPage.robot
Resource                            ./suites/accountPage.robot
Resource                            ./suites/contactPage.robot

*** Variables ***
${base_url}                         http://automationpractice.com/index.php
# runtest is using to select test procedure : All, Homepage, Register, Login, Order, Account, Contact
${runtest}                          All


*** Test Cases ***
Start test Automation
    [Documentation]                 Automation practice will be start

    Open Url                      

Check Homepage Test
    [Documentation]                 Check if Homepage test need to be run
    
    Run Keyword If                  '${runtest}' == 'All' or '${runtest}' == 'Homepage'             Start test Homepage

Check Register Test
    [Documentation]                 Check if Register test need to be run

    Run Keyword If                  '${runtest}' == 'All' or '${runtest}' == 'Register'             Start test Register

Check Login Test
    [Documentation]                 Check if login test need to be run

    Run Keyword If                  '${runtest}' == 'All' or '${runtest}' == 'Login'                Start test Login

Check Order Test
    [Documentation]                 Check if order test need to be run

    Run Keyword If                  '${runtest}' == 'All' or '${runtest}' == 'Order'                Start test Order

Check Account Test
    [Documentation]                 Check if account test need to be run

    Run Keyword If                  '${runtest}' == 'All' or '${runtest}' == 'Account'              Start test Account

Check Contact Test
    [Documentation]                 Check if contact test need to be run

    Run Keyword If                  '${runtest}' == 'All' or '${runtest}' == 'Contact'              Start test Contact

Stop test Automation
    [Documentation]                 Automation practice will be stop

    Close Url

