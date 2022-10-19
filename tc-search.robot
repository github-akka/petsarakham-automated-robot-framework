*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        http://127.0.0.1:8000

*** Keywords ***

*** Test Cases ***

TC-SEARCH
    Open Browser    http://127.0.0.1:8000/    ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Input Text    id:q    DOG-SERVICE 001
    Click Element    name:submit
    Sleep    2s
    Close Browser