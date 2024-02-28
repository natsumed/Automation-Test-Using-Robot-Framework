*** Settings ***
Library           SeleniumLibrary
Library           Process
Library           SSHLibrary
*** Variables ***
${URL}            https://github.com/natsumed/openwrt
${BROWSER}        Chrome
${LAPTOP_HOST}       192.168.1.100
${LAPTOP_USERNAME}   lenovo
${LAPTOP_PASSWORD}   root

*** Test Cases ***
Clone From GitHub
    [Documentation]    Transfer the firmware upgrade file from the laptop to the card
    Open Connection    ${LAPTOP_HOST}
    Login    ${LAPTOP_USERNAME}    ${LAPTOP_PASSWORD}
    ${result}    Execute Command    cd /home/lenovo/Desktop/PFE/Automation-Test-Using-Robot-Framework
    ${result}    Execute Command    git add .
    Sleep    2s
    ${result}    Execute Command    git commit -m "new msg"
    Sleep    2s
    ${result}    Execute Command    git push
    Sleep    5s
    Log    ${result}
