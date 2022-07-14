*** Settings ***
Documentation                           Keyword for order automation practice
Variables                               ./Supports/locator.yaml



*** Keywords ***
Select Casual Dresses
    [Documentation]                     Try to select casual dresses

    Mouse Over                          ${dress_menu}
    Wait Until Element Is Visible       ${casual_dress_menu}                        timeout=5s
    Click Element                       ${casual_dress_menu}
    Wait Until Element Is Visible       ${printed_dress_product}                    timeout=3s
    Return From Keyword                 ${printed_dress_product}

Add Product To Chart
    [Documentation]                     Need to add product to chart
    [Arguments]                         ${product}

    Mouse Over                          ${product}
    Wait Until Element Is Visible       ${detail_product}                           timeout=5s
    Click Element                       ${detail_product}
    Wait Until Element Is Visible       ${add_chart_product}                        timeout=5s
    Click Element                       ${add_chart_product}
    Wait Until Element Is Visible       ${proccess_checkout}                        timeout=20s
    Click Element                       ${proccess_checkout}

Verify Order Success
    [Documentation]                     Need to verify success order

    Wait Until Element Is Visible       ${order_success}                            timeout=5s
   