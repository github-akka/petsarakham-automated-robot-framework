*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***

*** Test Cases ***
Refactor Code
    Open Browser    http://127.0.0.1:8000/login    chrome
    Maximize Browser Window
    Sleep    2s
    Title Should Be    online services
    Reload Page
    Sleep    1s
    Input Text     name:email       jojo@gmail.com
    Input Password    name:password    123456789
    Wait Until Element Is Visible    name:password
    Click Button    //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep    2s
    Click Element    //*[@id="header"]/nav/ul/li[6]/a
    Wait Until Element Is Visible    //*[@id="header"]/nav/ul/li[6]/a
    Click Element    //*[@id="header"]/nav/ul/li[6]/ul/li[8]/a
    Sleep    1s
    
    Close Browser