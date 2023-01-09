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
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button

User-Page
    Open Browser       https://petsarakham-online.tech/login    ${BROWSER} 
    Maximize Browser Window
    Sleep    1s
    Login
    Sleep    1.5s
    Click Element    //*[@id="header"]/nav/ul/li[6]/a
    Sleep    0.5s
    Click Element    //*[@id="header"]/nav/ul/li[6]/ul/li[2]/a
    Sleep    2s

*** Test Cases ***
Test-case open user management page
    Open Browser       https://petsarakham-online.tech/login    ${BROWSER} 
    Maximize Browser Window
    Sleep    1s
    Login
    Sleep    1.5s
    Click Element    //*[@id="header"]/nav/ul/li[6]/a
    Sleep    0.5s
    Click Element    //*[@id="header"]/nav/ul/li[6]/ul/li[2]/a
    Sleep    2s
    Close Browser

Test-case add a user 
    User-Page
    Click Element    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[1]/div/div[2]/a
    Select From List By Label    //*[@id="utype"]    Service Provider
    Input Text    name    new2
    Input Text    email    new2@gmail.com
    Input Text    address    kku
    Input Text    phone    0987654321
    Input Password    password    123456789
    Input Password    password_confirmation    123456789
    Wait Until Element Is Visible    password_confirmation
    Click Button        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    2s
    Close Browser  

Test-case update user
    User-Page
    Sleep    1s
    Click Element    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/table/tbody/tr[10]/td[6]/form/a
    Sleep    1s
    Input Text    name    edit-name
    Wait Until Element Is Visible    name
    Click Button    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    2s
    Close Browser

Test-case delete a user
    User-Page
    Sleep    0.7s
    Click Element    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/table/tbody/tr[10]/td[6]/form/button
    Handle Alert    accept
    Sleep    2s
    Close Browser

    