*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://github.com/login
${BROWSER}        Chrome
${USERNAME}       natsumed
${PASSWORD}       mohamednatsu@*9

*** Keywords ***
Login to GitHub
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Sleep    5s
    Click Login Button
    Sleep    5s
Input Username
    [Arguments]    ${username}
    Input Text    id=login_field    ${username}   

Input Password
    [Arguments]    ${password}
    Input Text    id=password       ${password}

Click Login Button
    Click Button    class=btn-primary
