*** Settings ***
Library    OperatingSystem

*** Variables ***
${LAPTOP_HOST}       192.168.1.100
${LAPTOP_USERNAME}   lenovo
${LAPTOP_PASSWORD}   root
${PROJECT_DIRECTORY}  /home/lenovo/Desktop/PFE/Automation-Test-Using-Robot-Framework
${COMMIT_MESSAGE}     newmsg2

*** Test Cases ***
Pushing in GitHub
    Run    cd ${PROJECT_DIRECTORY}
    Run    git add .
    Run    git commit -m ${COMMIT_MESSAGE}
    Run    git push
    

