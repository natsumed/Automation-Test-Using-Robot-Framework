*** Settings ***
Library    SeleniumLibrary
Library    Process

*** Keywords ***
Github_Research
    Click Research Bar
    Click OpenWrt Button

Click Research Bar
    Click Element    css:button[data-target='qbsearch-input.inputButton'][data-action='click:qbsearch-input#handleExpand']
    Running Python Process    

Running Python Process    
    Run Process    python    ${CURDIR}/Write_Text.py    
    Sleep   5s
Click OpenWrt Button
    Sleep    10s
    Click Element    class=bBwPjs
    Sleep    10s
