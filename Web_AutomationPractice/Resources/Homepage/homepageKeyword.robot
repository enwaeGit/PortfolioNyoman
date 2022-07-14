*** Settings ***
Documentation                           Keyword for homepage automation practice
Variables                               ./Supports/locator.yaml


*** Keywords ***
Verify Homepage
    [Documentation]                     Need to verify homepage

    Location Should Be                  ${base_url}      

Verify Features Display
    [Documentation]                     Need to check feature on homepage

    Element Should Be Visible           ${featuresHome}

Refresh Homepage
    [Documentation]                     This keyword is use for another test procedure which need start from homepage

    ${need_logout}=                     Get Element Count                       ${log_out}
    Run Keyword If                      ${need_logout} > 0                      Click Element           ${log_out}
    ${url_dummy}=                       Get Location
    Run Keyword If                      '${url_dummy}' != '${base_url}'         Go To                   ${base_url}
    
      

    