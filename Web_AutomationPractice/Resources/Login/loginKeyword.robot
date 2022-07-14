*** Settings ***
Documentation                           Keyword for login automation practice
Variables                               ./Supports/locator.yaml


*** Keywords ***
Fill Email And Password Login
    [Documentation]                     Fill email and password to login
    [Arguments]                         ${fill_email}            ${fill_password}

    Run Keyword If                      '${fill_email}' == 'None'               Clear Element Text                  ${input_email}
    Run Keyword If                      '${fill_email}' != 'None'               Input Text                          ${input_email}                         ${fill_email}
    
    Run Keyword If                      '${fill_password}' == 'None'            Clear Element Text                  ${input_password}
    Run Keyword If                      '${fill_password}' != 'None'            Input Text                          ${input_password}                       ${fill_password}
    
    Click Element                       ${button_signin}

Verify Correct Login
    [Documentation]                     Need to verify correct login

    # Element Should Be Visible           ${welcome_account}
    Wait Until Element Is Visible       ${welcome_account}                      timeout=5s
    
Verify Incorrect Login
    [Documentation]                     Need to verify incorrect login

    # Element Should Be Visible           ${invalid_login}
    Wait Until Element Is Visible       ${invalid_login}                        timeout=5s

Proccess Forget Password
    [Documentation]                     SKIP FIRST :: Proccess forget password
    [Arguments]                         ${email_forget}

    # Click Element                       ${forget_password}
    Sleep                               1s

