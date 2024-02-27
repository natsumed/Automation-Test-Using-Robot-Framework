*** Settings ***
Resource    Github_Login.robot
Resource    Github_Research.robot
Library     SeleniumLibrary


*** Variables ***




*** Test Cases ***
Access Repositories
    Login to GitHub
    Github_Research
    Sleep    5s
Fork Repository
    Forking
    Close Browser


*** Keywords ***
Forking
    Click Element    xpath://a[@id='fork-button']
    Sleep    5s
    Click Button    class= kHbhfU
    Sleep    20s