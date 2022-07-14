*** Settings ***
Documentation                           Keyword for contact automation practice
Variables                               ./Supports/locator.yaml

*** Variables ***
${pict_attach}                          ./Supports/Pictures/ramb.png
${message}                              Problem with order

*** Keywords ***
Entry Contact Page
    [Documentation]                     Entry contact us page

    Click Element                       ${contact_menu}

Verify Contact Page
    [Documentation]                     Need to verify contact us page

    Wait Until Element Is Visible       ${contact_form}                         timeout=5s
    
Fill Message To Contact
    [Documentation]                     Need to fill message to contact

    Select From List By Value           ${subject_list}                         2
    Select From List By Value           ${order_list}                           0
    # Choose File                         ${attach_file}                          ${pict_attach}
    Input Text                          ${message_text}                         ${message}  
    

Submit Message To Contact
    [Documentation]                     Submit message

    Click Element                       ${submit_message}

Verify Message Success Submit
    [Documentation]                     Need to verify if message success to be submitted

    Wait Until Element Is Visible       ${success_submit}                       timeout=5s
    
