*** Settings ***
Library    Process
Library    SeleniumLibrary

*** Variables ***
${URL}             http://192.168.13.1/cgi-bin/luci/admin/system/flash
${BROWSER}         Chrome
${USERNAME}        root

*** Test Cases ***
Opening Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Username    ${USERNAME}
    Click Login Button
    Sleep    5s
    Click Perform Reset Button
    Sleep   10s
Running Python Process    
    Run Process    python    ${CURDIR}/press_enter_key.py    
    Sleep   300s
    Close Browser

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    id=luci_username    ${username}

Click Login Button
    Click Button    class=cbi-button-positive

Click Perform Reset Button
    Click Button    xpath=//button[contains(text(), 'Perform reset')]
