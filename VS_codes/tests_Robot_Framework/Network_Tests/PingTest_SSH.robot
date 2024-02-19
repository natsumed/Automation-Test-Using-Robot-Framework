*** Settings ***
Library    OperatingSystem

*** Test Cases ***
Ping Test
    [Documentation]    Verify that the embedded system is reachable
    [Tags]    Network
    ${ping_result}=    Run And Return Rc And Output    ping -c 4 192.168.13.1
    Should Be Equal As Numbers    ${ping_result}[0]    0    # Verify that ping command was successful
    Log    ${ping_result}[1]    # Log the output of the ping command
