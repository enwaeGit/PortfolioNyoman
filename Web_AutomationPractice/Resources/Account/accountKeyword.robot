*** Settings ***
Documentation                           Keyword for account automation practice
Variables                               ./Supports/locator.yaml


*** Keywords ***
Entry Account Info
    [Documentation]                     Entry to account user information

    Click Element                       ${account_menu}
    Wait Until Element Is Visible       ${user_info}                                timeout=5s
    Click Element                       ${user_info}
    Wait Until Element Is Visible       ${heading_user_info}                        timeout=5s
    