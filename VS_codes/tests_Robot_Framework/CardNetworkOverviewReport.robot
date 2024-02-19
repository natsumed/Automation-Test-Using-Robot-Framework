*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    OperatingSystem

*** Variables ***
${URL}            http://192.168.13.1/cgi-bin/luci/admin/
${BROWSER}        Chrome
${USERNAME}       root
${SYSTEM_INFO_FILE}    /home/lenovo/Desktop/PFE/VS_codes/tests_Robot_Framework/system_info.txt

*** Test Cases ***
Login to Luceor and Get System Info
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Username    ${USERNAME}
    Click Login Button
    Wait Until Element Is Visible    css=.table   timeout=10s
    ${system_info}    Get Text    css=.table
    Log    ${system_info}
    Write System Information To File    ${system_info}    ${SYSTEM_INFO_FILE}
    Sleep    5s
    Close Browser

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    id=luci_username    ${username}

Click Login Button
    Click Button    class=cbi-button-positive

Get System Information
    ${system_info}=    Get Text    css=.table
    [Return]    ${system_info}

Write System Information To File
    [Arguments]    ${info}    ${file_path}
    Create File    ${file_path}    ${info}
