*** Settings ***
Resource  resource.robot
Test Setup    Start Test Case
Test Teardown    End Test Case

*** Test Cases ***
At start the counter is zero
    Page Should Contain    nappia painettu 0 kertaa

When button pressed twice the counter is two
    Click Button    Paina
    Click Button    Paina
    Page Should Contain    nappia painettu 2 kertaa
