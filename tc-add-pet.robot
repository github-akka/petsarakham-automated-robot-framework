*** Settings ***
Library    SeleniumLibrary
Library    DateTime
#Library    SikuliLibrary
#Library    SikuliLibrary
#Library    SikuliLibrary
#Library           pyautogui
#Library           ImageHorizonLibrary

*** Variables ***
${BROWSER}    chrome
${url}        http://127.0.0.1:8000


*** Keywords ***

    
*** Test Cases ***
TC001
    Open Browser        http://127.0.0.1:8000       chrome
    Maximize Browser Window
    Sleep    5s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Input Text         //*[@id="email"]    jojo@gmail.com
    Input Password      //*[@id="password"]    123456789
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep     3s
    Click Element    //*[@id="header"]/nav/ul/li[6]/a
    Sleep    2s
    Click Element     //*[@id="header"]/nav/ul/li[6]/ul/li[7]/a
    Sleep    2s
    Click Link    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[1]/div/div[2]/a
    Sleep    2s
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[1]/div/input    jojo2
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[2]/div/input    cat
    Input Text    name:age    2years
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[4]/div/input    3 kg.
    Sleep   2s
    Choose File        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[5]/div/input      C:/Users/AVSKS/Desktop/Rb-fm-test/img/test.png        
    Sleep    2s
    Click Button    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    2s
    Go To    http://127.0.0.1:8000/pet-all
    Sleep    5s    
    Close Browser
