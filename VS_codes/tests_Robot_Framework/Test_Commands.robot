*** Settings ***
Library    OperatingSystem

*** Test Cases ***
Create Folder
    ${home_dir}=    Set Variable    /home/lenovo  # Update this with your actual home directory path
    ${desktop_path}=    Set Variable    ${home_dir}/Desktop
    ${folder_path}=    Set Variable    ${desktop_path}/aaaa
    Run    mkdir ${folder_path}
    Directory Should Exist    ${folder_path}
