*** Settings ***
Documentation                       Test procedure for Homepage will be write in here
Resource                            ../Resources/Homepage/homepageKeyword.robot

*** Keywords ***
Start test Homepage
    [Documentation]                 Starting homepage test

    Verify Homepage                
    Verify Features Display
