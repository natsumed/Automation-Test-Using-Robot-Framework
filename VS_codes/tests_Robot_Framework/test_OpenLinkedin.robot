*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://www.linkedin.com/
${BROWSER}        Chrome
${USERNAME}       med.fathallah.9@gmail.com
${PASSWORD}       natsumohamed@*9

*** Test Cases ***
Login to LinkedIn
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Wait Until Login Button Is Visible
    Click Login Button
    Verify Successful Login
    Close Browser

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    id=session_key    ${username}   # Assuming 'session_key' is the ID of the username field

Input Password
    [Arguments]    ${password}
    Input Text    id=session_password    ${password}   # Assuming 'session_password' is the ID of the password field

Wait Until Login Button Is Visible
    Wait Until Element Is Visible    class=sign-in-form__submit-btn    timeout=10s

Click Login Button
    Click Button    class=sign-in-form__submit-btn

Verify Successful Login
    Wait Until Page Contains Element    class=profile-rail-card__actor-link
    Page Should Contain Element    class=profile-rail-card__actor-link
