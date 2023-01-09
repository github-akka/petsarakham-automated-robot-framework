*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        https://petsarakham-online.tech

*** Keywords ***

*** Test Cases ***

TC-SEARCH
    Open Browser    https://petsarakham-online.tech/    ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Input Text    id:q    DOG-SERVICE 001
    Click Element    name:submit
    Sleep    2s
    Close Browser