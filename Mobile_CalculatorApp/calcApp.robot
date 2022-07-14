*** Settings ***
Documentation                   Test automation for calculator application
Library                         AppiumLibrary
Resource                        ./Suites/main.robot
Resource                        ./Suites/homePage.robot


*** Test Cases ***
Starting test automation for calculator application
    [Documentation]                                 Start test automation

    Open Calculator Application

    Verify Calculator Application Homepage
    Starting Test Operation on Calculator

    Close Calculator Application
