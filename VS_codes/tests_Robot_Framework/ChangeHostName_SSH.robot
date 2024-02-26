*** Settings ***
Library    SSHLibrary
Library    OperatingSystem

*** Variables ***
${HOST}        192.168.13.1
${USERNAME}    root
${PASSWORD}

*** Test Cases ***
Set Hostname Test
    Open Connection    ${HOST}
    Login    ${USERNAME}    ${PASSWORD} 
    ${result}    Execute Command    uci set system.@system[0].hostname=admin
    Log    ${result}
    ${result}    Execute Command    uci commit system
    Log    ${result}
    ${result}    Execute Command    /etc/init.d/system reload
    Log    ${result}
    Close Connection
