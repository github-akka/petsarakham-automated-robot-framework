*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${url}        https://petsarakham-online.tech

*** Keywords ***
Login
    Input Text         //*[@id="email"]    admin@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep    1s
    Click Button      //*[@id="userloginform"]/div[3]/div[2]/button

Chat-Page
    Open Browser       https://petsarakham-online.tech/login    ${BROWSER} 
    Maximize Browser Window
    Sleep    1s
    Login
    Sleep    1.5s
    Click Element       //*[@id="header"]/nav/ul/li[6]/a
    Sleep    1.5s
    Click Element       //*[@id="header"]/nav/ul/li[6]/ul/li[6]/a
    Sleep    2s

*** Test Cases ***
Test-case chat admin
    Chat-Page
    Sleep    0.8s
    Click Element       //html/body/div[1]/div[1]/div[2]/div[1]/div[2]/table[1]/tbody/tr/td[2]
    Sleep    1s
    Input Text      //*[@id="message-form"]/textarea      Hi,newcustomer
    Sleep    0.7s
    Click Button       //*[@id="message-form"]/button
    Sleep    2s
    Close Browser

Test-case delete conversation
    Chat-Page
    Sleep    0.8s
    Click Element       //html/body/div[1]/div[1]/div[2]/div[1]/div[2]/table[1]/tbody/tr/td[2]
    Sleep    1s
    Click Element        //html/body/div[1]/div[3]/div[2]/a
    Sleep    1s
    Click Element        //html/body/div[3]/div/div/div[3]/a[2]
    Sleep    2s
    Close Browser
