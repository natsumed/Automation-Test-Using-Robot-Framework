*** Settings ***
Library    OperatingSystem

*** Variables ***
${PROJECT_DIRECTORY}  /home/lenovo/openwrt

*** Test Cases ***
Pushing in GitHub
    Run    cd ${PROJECT_DIRECTORY}
    Run    ./scripts/feeds update -a
    Run    ./scripts/feeds install -a
    Run    cp /home/lenovo/downloads/.config ${PROJECT_DIRECTORY}
    Run    make
    


