*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            http://192.168.13.1/cgi-bin/luci/admin/system/system
${BROWSER}        Chrome
${USERNAME}       root
${Hostname}       AdminnnnMohamed

*** Test Cases ***
Open Example Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Username    ${USERNAME}
    Click Login Button
    Wait Until Page Contains Element    class=cbi-input-text 
    Input Hostname    ${Hostname}
    Click SAVE&APPLY Button
    Sleep    20s
    Close Browser

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    id=luci_username
    Input Text    id=luci_username    ${username}

Click Login Button
    Wait Until Element Is Visible    class=cbi-button-positive
    Click Button    class=cbi-button-positive

Input Hostname
    [Arguments]    ${hostname}
    Wait Until Element Is Visible    class=cbi-input-text
    Input Text    class=cbi-input-text    ${hostname}

Click SAVE&APPLY Button
    Click Element    xpath=//li[contains(text(), 'Save & Apply')]