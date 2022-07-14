*** Settings ***
Documentation                   General test procedure will be write in here
Resource                        ./homepage.robot

*** Variables ***
${browser_type}                 chrome

*** Keywords ***
Open Url
    [Documentation]             Open browser and maximize

    Open browser                ${base_url}                              ${browser_type}
    Maximize Browser Window

Close Url
    [Documentation]             Close browser and url

    Close Browser