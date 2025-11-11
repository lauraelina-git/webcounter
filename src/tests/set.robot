*** Settings ***
Resource    resource.robot
Test Setup    Start Test Case
Test Teardown    End Test Case

*** Test Cases ***
Set Counter To Given Value
    Input Text    value    10
    Click Button    Set
    Wait Until Page Contains    nappia painettu 10 kertaa    timeout=5s
