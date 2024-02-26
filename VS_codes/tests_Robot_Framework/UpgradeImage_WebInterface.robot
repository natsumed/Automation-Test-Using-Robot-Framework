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
    Click Flash Image Button
    Click Browse Button
    Sleep    2s
Running Python Process    
    Run Process    python    ${CURDIR}/file_upload_windows.py    
    Sleep   20s


Uploading    
    Click Upload Button
    Sleep    10s
    Click Continue Button
    Sleep    200s
    Close Browser

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    id=luci_username    ${username}

Click Login Button
    Click Button    class=cbi-button-positive
Click Flash Image Button
    Click Button    xpath=//button[contains(text(), 'Flash image...')]

Click Browse Button
    Click Button    xpath=//button[contains(text(), 'Browse…')]

Click Upload Button
    #Wait Until Element Is Visible   class=important
    Click Element    css:div.right button.btn.cbi-button-action.important

Click Continue Button
    Click Element    css:div.right button.btn.cbi-button-action.important
