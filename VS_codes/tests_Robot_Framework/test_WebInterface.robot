*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            http://192.168.13.1/cgi-bin/luci/admin/
${BROWSER}        Chrome
${USERNAME}       root
     

*** Test Cases ***
Login to Luceor
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Username    ${USERNAME}

    Sleep    5s
    Click Login Button
    Sleep    5s
    #Verify Successful Login
    Close Browser

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    id=luci_username    ${username}   # Assuming 'session_key' is the ID of the username field


Click Login Button
    Click Button    class=cbi-button-positive

#Verify Successful Login

