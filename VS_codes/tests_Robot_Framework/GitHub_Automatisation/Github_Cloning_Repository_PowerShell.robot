*** Settings ***
Library    OperatingSystem

*** Test Cases ***
Clone OpenWRT Repository
    ${cd_command}=    Set Variable    cd .\Desktop\Studies\PFE\
    ${git_clone_command}=    Set Variable    git clone https://github.com/natsumed/openwrt.git

    Run    ${cd_command}
    Run    ${git_clone_command}

    Wait Until Keyword Succeeds    10x    1s    Check Cloning Status

    Sleep    5s    # Wait for 5 seconds after cloning is complete

*** Keywords ***
Check Cloning Status
    ${output}=    Run    git status
    Log    ${output}
    Run Keyword Unless    'nothing to commit' in ${output}    Fail    Cloning not complete yet
