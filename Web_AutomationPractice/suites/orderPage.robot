*** Settings ***
Documentation                       Test procedure for Order will be write in here
Resource                            ../Resources/Order/orderKeyword.robot
Resource                            ../Resources/Login/loginKeyword.robot
Resource                            ../Resources/Register/registerKeyword.robot


*** Variables ***
#Select order test method: All, Login, NonUser
${order_test_method}                Login


*** Keywords ***
Start test Order
    [Documentation]                 Starting test order

    #check if need to test order with login
    Run Keyword If                  '${order_test_method}' == 'All' or '${order_test_method}' == 'Login'            Test Order With Login First
    #check if need to test order for non user
    Run Keyword If                  '${order_test_method}' == 'All' or '${order_test_method}' == 'NonUser'          Test Order For Without Login
    

Test Order With Login First
    [Documentation]                 Test order with login first

    Refresh Homepage
    Entry Register Page
    Verify Register Page
    Fill Email And Password Login   ${correct_email}                ${correct_password}
    Verify Correct Login
    ${product_select}               Select Casual Dresses
    Add Product To Chart            ${product_select}
    Verify Order Success


Test Order For Without Login
    [Documentation]                 SKIP FIRST :: Test order without login

