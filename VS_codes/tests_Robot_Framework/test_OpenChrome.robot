*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://www.google.com/
${BROWSER}        Chrome

*** Test Cases ***
Open Example Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Google
    Close Browser
