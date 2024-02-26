*** Settings ***
Library    SSHLibrary
Library    OperatingSystem

*** Variables ***
${HOST}        192.168.13.1
${USERNAME}    root
${PASSWORD}
*** Test Cases ***
SSH Connection Test
    Open Connection    ${HOST}
    Login    ${USERNAME}  ${PASSWORD} 
    ${result}    Execute Command    ps | grep olsr
    Log    ${result}
    #TEST to ensure that the OLSR process is running:
    #
    #
    #
    ${result}    Execute Command    cat /etc/olsrd.conf
    Log    ${result}
    ${result}    Execute Command    ls
    Log    ${result}
    Close Connection
