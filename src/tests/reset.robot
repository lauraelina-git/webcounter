*** Settings ***
Resource    resource.robot
Suite Setup  Reset Counter
Suite Teardown  Close Browser

*** Keywords ***
Reset Counter
    Open And Configure Browser
    Go To  ${HOME_URL}
    Click Button  Nollaa

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
