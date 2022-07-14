# Test Automation for Mobile App and Website

This test is using Robot Framework
There are 2 test automation:
1. Mobile_CalculatorApp
    Test Calculator application on android using Robot Framework base on Appium
    Emulator Android using android version 8.1

    Test will execute by run calcApp.robot file
    This test is Addition, Substraction, Multiplication, and Divider operation on calculator application

    This test report also included

2. Web_AutomationPractice
    Test http://automationpractice.com using Robot Framework base on Selenium
    Scope of Test:
    * Homepage
    * Register
    * Login
    * Order
    * Account
    * Contact Us

    Test will execute by run automationPractice.robot file
    This test procedure can be select by change variable ${runtest} on file automationPractice.robot

    All keywords separate with folder with name it self.

    Register test procedure can be select by change variable ${register_test_method} on file registerPage.robot

    Login test procedure can be select by change variable ${login_test_method} on file loginPage.robot

    This test report also included.



