*** Settings ***
Documentation                           Keyword for register page automation practice
Variables                               ./Supports/locator.yaml

*** Variables ***
#This is to select submit, need to proccess or not: Yes, No
${submit_proccess}                      No

*** Keywords ***
Entry Register Page
    [Documentation]                     This keyword will entry register page

    Click Element                       ${sign_in}

Verify Register Page
    [Documentation]                     Need to verify register page

    Location Should Be                  ${register_url}

Fill Email To Register
    [Documentation]                     Submit email to register
    [Arguments]                         ${fill_email}

    Run Keyword If                      '${fill_email}' == 'None'               Clear Element Text                  ${create_email}
    Run Keyword If                      '${fill_email}' != 'None'               Input Text                          ${create_email}                         ${fill_email}
    #need to save input email for next test
    Run Keyword If                      '${fill_email}' != 'None'               Set Global Variable                 ${submitEmail}                          ${fill_email}
    Click Element                       ${create_button}

Verify New Email Register
    [Documentation]                     Need to verify new email

    # Element Should Be Visible           ${create_form}
    Wait Until Element Is Visible       ${create_form}                          timeout=10s

Verify Old Email Register
    [Documentation]                     Need to verify old email

    # Element Should Be Visible           ${error_create}
    Wait Until Element Is Visible       ${error_create}                         timeout=5s

Fill Correct Information To Create An Account
    [Documentation]                     Fill correct information; exptation is success submit

    ${submitEmail_var}=                 Get Variable Value                      ${submitEmail}
    Click Element                       ${input_gender}
    Input Text                          ${input_firstname}                      Andi
    Input Text                          ${input_lastname}                       Wijaya
    # Element Text Should Be              ${input_email}                          ${submitEmail_var}
    Input Text                          ${input_password}                       12345
    Select From List By Value           ${input_day}                            2
    Select From List By Value           ${input_month}                          1
    Select From List By Value           ${input_year}                           2000
    Click Element                       ${input_newsletter}
    Click Element                       ${input_offers}
    Input Text                          ${input_addr_firstname}                 Peter
    Input Text                          ${input_addr_lastname}                  Parker
    Input Text                          ${input_addr_company}                   None
    Input Text                          ${input_addr_addr1}                     Rose St.
    Input Text                          ${input_addr_addr2}                     Plot B
    Input Text                          ${input_addr_city}                      Virginia
    Select From List By Label           ${input_addr_state}                     Alaska
    Input Text                          ${input_addr_postcode}                  11111
    Select From List By Label           ${input_addr_country}                   United States
    Input Text                          ${input_addr_additional}                None
    Input Text                          ${input_addr_homephone}                 000
    Input Text                          ${input_addr_mobilephone}               0123456
    Input Text                          ${input_addr_alias}                     Home
    Run Keyword If                      '${submit_proccess}' == 'Yes'           Submit Process

Submit Process
    [Documentation]                     Procedure to click submit button

    Click Element                       ${submit_account}
    Element Should Be Visible           ${welcome_account}
    Logout Account

Logout Account
    #need to log out
    Click Element                       ${log_out}
    

Fill Uncomplete Information To Create An Account
    [Documentation]                     SKIP FIRST :: Fill with uncomplete information; expectation is fail submit
    
    Sleep                               1s