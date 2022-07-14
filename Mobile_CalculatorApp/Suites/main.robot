*** Settings ***
Documentation                           Main test application


*** Variables ***
${REMOTE_URL}                           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}                        android
${PLATFORM_VERSION}                     8.1
${DEVICE_NAME}                          emulator-5554
${APP_PACKAGE}                          com.android.calculator2
${APP_ACTIVITY}                         com.android.calculator2.Calculator
${AUTOMATION_NAME}                      uiautomator2


*** Keywords ***
Open Calculator Application
    [Documentation]                     Open calculator application

    Open Application                    ${REMOTE_URL}  
    ...                                 platformName=${PLATFORM_NAME}
    ...                                 platformVersion=${PLATFORM_VERSION}
    ...                                 deviceName=${DEVICE_NAME}
    ...                                 appPackage=${APP_PACKAGE}
    ...                                 appActivity=${APP_ACTIVITY}
    ...                                 automationName=${AUTOMATION_NAME}


Close Calculator Application
    [Documentation]                     Close calculator application

    Close Application