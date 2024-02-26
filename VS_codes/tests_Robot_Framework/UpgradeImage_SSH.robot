*** Settings ***
Library    SSHLibrary
Library    OperatingSystem

*** Variables ***
${CARD_HOST}         192.168.13.1
${CARD_USERNAME}     root
${CARD_PASSWORD}     
${LAPTOP_HOST}       192.168.1.252
${LAPTOP_USERNAME}   lenovo
${LAPTOP_PASSWORD}   root
${LAPTOP_FILE_PATH}  /home/lenovo/openwrt-ipq40xx-generic-wallys_dr40x9-squashfs-sysupgrade.bin

*** Test Cases ***
Transfer File from Laptop to Card
    [Documentation]    Transfer the firmware upgrade file from the laptop to the card
    Open Connection    ${LAPTOP_HOST}
    Login    ${LAPTOP_USERNAME}    ${LAPTOP_PASSWORD}
    ${result}    Execute Command    scp ${LAPTOP_FILE_PATH} ${CARD_USERNAME}@${CARD_HOST}:/tmp
    Open Connection    ${CARD_HOST}
    Login    ${CARD_USERNAME}    ${CARD_PASSWORD} 
    ${result}    Execute Command    sysupgrade /tmp/openwrt-ipq40xx-generic-wallys_dr40x9-squashfs-sysupgrade.bin
    Log    ${result}
    
    Close Connection
