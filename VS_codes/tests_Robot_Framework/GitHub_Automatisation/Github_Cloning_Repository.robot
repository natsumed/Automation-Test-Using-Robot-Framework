*** Settings ***
Library           SeleniumLibrary
Resource          Github_Login.robot
Library           Process
Library           SSHLibrary
*** Variables ***
${URL}            https://github.com/natsumed/openwrt
${BROWSER}        Chrome
${LAPTOP_HOST}       192.168.1.194
${LAPTOP_USERNAME}   MSI
${LAPTOP_PASSWORD}   976431

*** Test Cases ***
Clone From GitHub
    [Documentation]    Transfer the firmware upgrade file from the laptop to the card
    Open Connection    ${LAPTOP_HOST}
    Login    ${LAPTOP_USERNAME}    ${LAPTOP_PASSWORD}
    ${result}    Execute Command    cd C:\Users\MSI\Desktop\Studies\PFE
    ${result}    Execute Command    mkdir abcd
    Log    ${result}
