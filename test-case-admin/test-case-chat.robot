*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${url}        http://127.0.0.1:8000

*** Keywords ***
Login
    Input Text         //*[@id="email"]    admin@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button

User-Page
    Open Browser       http://127.0.0.1:8000/login    ${BROWSER} 
    Maximize Browser Window
    Sleep    1s
    Login
    Sleep    1.5s
    Click Element    //*[@id="header"]/nav/ul/li[6]/a
    Sleep    0.5s
    Click Element    //*[@id="header"]/nav/ul/li[6]/ul/li[2]/a
    Sleep    2s

*** Test Cases ***