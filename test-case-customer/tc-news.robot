*** Settings ***
Library        SeleniumLibrary
*** Variables ***
${URL1}     https://petsarakham-online.tech/login
${URL2}     https://petsarakham-online.tech/my-news 
${Browser}      chrome

*** Keywords ***
Login
    Input Text         //*[@id="email"]    kingpower2535@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button

New
    Open Browser        ${URL1}        ${Browser}
    Maximize Browser Window    
    Sleep        1.5s
    Login
    Go To    ${URL2}
    Sleep        1.5s
    

*** Test Cases ***
test-case add a news
    New
    Click Element    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[1]/div/div[2]/a    
    Sleep    1.2s
    Input Text       title        service-tester shop
    Input Text        body        new shop
    Choose File        image        C:/Users/AVSKS/Desktop/gogo.png
    Sleep    2.5s
    Click Button        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    1s
    Go To       https://petsarakham-online.tech/my-news
    Sleep        2s
    Close Browser

test-case delete a news
    New
    Click Element    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/table/tbody/tr/td[4]/a    
    Sleep     0.8s
    Handle Alert      accept
    Sleep        2s
    Close Browser
