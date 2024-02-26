*** Settings ***
Library    OperatingSystem

*** Variables ***
${HOST}        192.168.13.1
${USERNAME}    root
${PASSWORD}
${PUTTY_PATH}    C:\\Users\\MSI\\Desktop\\Software\\PuTTY (64-bit).lnk

*** Test Cases ***
SSH Connection Test
    ${putty_command}=    Set Variable    ${PUTTY_PATH} -ssh ${USERNAME}@${HOST} -pw ${PASSWORD}
    Run    ${putty_command}
    ${putty_command}=    Set Variable    touch bbb
    Run    ${putty_command}

    # Add more commands as needed
