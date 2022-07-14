*** Settings ***
Documentation                                   Procedure homepage
Resource                                        ../Resources/Homepage/homepageKeyword.robot


*** Keywords ***
Verify Calculator Application Homepage
    [Documentation]                             Verify open application

    Verify Homepage Calculator

Starting Test Operation on Calculator
    [Documentation]                             Test operation on calculator application

    Test Addition Operation
    Test Substraction Operation
    Test Multiplication Operation
    Test Divider Operation
