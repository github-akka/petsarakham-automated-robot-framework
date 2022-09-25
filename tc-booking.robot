*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        http://127.0.0.1:8000

*** Keywords ***

*** Test Cases ***
TC-booking
    #booking
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    5s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Input Text         //*[@id="email"]    jojo@gmail.com
    Input Password      //*[@id="password"]    123456789
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep     3s
    Click Link    //*[@id="header"]/nav/ul/li[2]/a
    Sleep    2s
    Click Element    //*[@id="layout"]/div[3]/section/div[2]/div/div/ul/li[1]/div/i/a/img
    Sleep    2s
    Click Element    //*[@id="layout"]/div[3]/section/div[2]/div/div/div/div[4]/a/div/img
    Sleep    1s
    Click Element    //*[@id="layout"]/div[3]/section/div[2]/div/div/div/div[2]/aside[1]/div/div[3]/form/div/a
    Click Element    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[1]/div/select/option[2]
    
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[3]/div/input    03:30PM
    Click Button    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[3]/div/input
    Sleep    5s
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[4]/div/input    09/22/2022
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[5]/div/input    09/24/2022
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[6]/div/textarea    jojo
    Click Button    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    2s
    Go To    http://127.0.0.1:8000
    Sleep    2s
    Click Element    //*[@id="header"]/nav/ul/li[6]
    Sleep    1s
    Click Element    //*[@id="header"]/nav/ul/li[6]/ul/li[5]
    Click Element    //*[@id="header"]/nav/ul/li[6]/ul/li[5]/ul/li[2]/a
    Sleep    3s
    Close Browser