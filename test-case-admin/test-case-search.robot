*** Settings ***
Library        SeleniumLibrary
*** Variables ***
${URL}        https://petsarakham-online.tech/login
${Browser}        chrome

*** Keywords ***
Login
    Input Text         //*[@id="email"]    admin@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button


*** Test Cases ***
Test-case search services
    Open Browser    ${URL}        ${Browser}
    Maximize Browser Window
    Sleep        1s
    Login
    Sleep        1.5s
    Input Text        q        aa-001
    Wait Until Element Is Visible        q
    Click Element        submit
    Sleep        2s
    Close Browser

