*** Settings ***
Documentation                           Keyword for homepage
Variables                               ./Supports/locator.yaml


*** Keywords ***
Verify Homepage Calculator
    [Documentation]                     Need to verify homepage calculator

    Wait Until Element Is Visible       ${formula_box}              5s

Test Addition Operation
    [Documentation]                     Proccess Addition Operation

    Click Element                       ${digit_1}
    Click Element                       ${op_add}
    Click Element                       ${digit_5}
    Click Element                       ${op_equal}
    Element Should Contain Text         ${result_box}               6    
    Click Element                       ${op_clr}

Test Substraction Operation
    [Documentation]                     Proccess Substraction Operation

    Click Element                       ${digit_6}
    Click Element                       ${op_sub}
    Click Element                       ${digit_2}
    Click Element                       ${op_equal}
    Element Should Contain Text         ${result_box}               4    
    Click Element                       ${op_clr}
    
Test Multiplication Operation
    [Documentation]                     Proccess Multiplication Operation

    Click Element                       ${digit_2}
    Click Element                       ${op_mul}
    Click Element                       ${digit_4}
    Click Element                       ${op_equal}
    Element Should Contain Text         ${result_box}               8    
    Click Element                       ${op_clr}

Test Divider Operation
    [Documentation]                     Proccess Divider Operation

    Click Element                       ${digit_9}
    Click Element                       ${op_div}
    Click Element                       ${digit_3}
    Click Element                       ${op_equal}
    Element Should Contain Text         ${result_box}               3    
    Click Element                       ${op_clr}
