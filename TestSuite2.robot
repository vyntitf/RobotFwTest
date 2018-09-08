*** Settings ***
Library    Selenium2Library
Library    MyLib.py    
Resource    init_keywords.robot

# Suite Setup    Open Homepage
# Suite Teardown    Close All Browsers

Force Tags    example

*** Test Cases ***
Test 1
    Log    Testing...    
    ${result}=    Join Two Strings    hello    world
    Should Be Equal    ${result}    hello world 
    
Test 2
    Any Arguments    a    b    c    d