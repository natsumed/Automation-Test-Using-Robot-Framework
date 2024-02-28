*** Settings ***
Library           SSHLibrary

*** Variables ***
${LAPTOP_HOST}       192.168.1.100
${LAPTOP_USERNAME}   lenovo
${LAPTOP_PASSWORD}   root
${PROJECT_DIRECTORY}  /home/lenovo/Desktop/PFE/Automation-Test-Using-Robot-Framework
${COMMIT_MESSAGE}     new msg

*** Test Cases ***
Clone From GitHub
    [Documentation]    Transfer the firmware upgrade file from the laptop to the card
    Open Connection    ${LAPTOP_HOST}
    Login              ${LAPTOP_USERNAME}    ${LAPTOP_PASSWORD}

    ${result_cd}=      Execute Command    cd ${PROJECT_DIRECTORY}
    Run Keyword If     "${result_cd}" != ""    Check Output    ${result_cd}    # Check if output is not empty

    ${result_add}=     Execute Command    git add .
    Run Keyword If     "${result_add}" != ""    Check Output    ${result_add}

    Sleep    2s

    ${result_commit}=  Execute Command    git commit -m "${COMMIT_MESSAGE}"
    Run Keyword If     "${result_commit}" != ""    Check Output    ${result_commit}

    Sleep    2s

    ${result_push}=    Execute Command    git push
    Run Keyword If     "${result_push}" != ""    Check Output    ${result_push}

    Sleep    5s

*** Keywords ***
Check Output
    [Arguments]    ${output}
    Log    ${output}    # Log the output for debugging purposes
