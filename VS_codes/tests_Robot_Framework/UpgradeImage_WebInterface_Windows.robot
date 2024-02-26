*** Settings ***
Library    SeleniumLibrary
Library    AutoItLibrary

*** Variables ***
${URL}             http://192.168.13.1/cgi-bin/luci/admin/system/flash
${BROWSER}         Chrome
${USERNAME}        root
${IMAGE_FILE}      C:\\Users\\MSI\\Desktop\\Studies\\PFE\\OpenWRTimg\\openwrt-ipq40xx-generic-wallys_dr40x9-squashfs-sysupgrade.bin

*** Test Cases ***
Upload Image File
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Username    ${USERNAME}
    Click Login Button
    Sleep    5s
    Click Flash Image Button
    Click Browse Button
    Sleep    2s
    Choose File    ${IMAGE_FILE}
    Sleep    60s
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
    Click Element    css:div.right button.btn.cbi-button-action.important

Click Continue Button
    Click Element    css:div.right button.btn.cbi-button-action.important

Choose File
    [Arguments]    ${file_path}
    Run Keyword And Ignore Error    AutoItLibrary.WinWaitActive    Open
    Run Keyword And Ignore Error    AutoItLibrary.ControlSetText    Open    Edit1    ${file_path}
    Run Keyword And Ignore Error    AutoItLibrary.ControlClick    Open    Button1
