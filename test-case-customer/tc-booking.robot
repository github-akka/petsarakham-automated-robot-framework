*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        https://petsarakham-online.tech

*** Keywords ***
Login 
    Input Text         //*[@id="email"]    user-tester@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep    1.5s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button

*** Test Cases ***
TC-User view list of booking services for pending

TC-booking
    #booking
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Login
    Sleep     1s
    Click Element    //*[@id="layout"]/div[3]/section[2]/div[3]/div/div/div[2]/div[2]
    Sleep    1s
    Click link    //*[@id="layout"]/div[3]/section/div[2]/div/div/div/div[2]/aside[1]/div/div[3]/form/div/a
    Sleep    1s
    Click Element    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[1]/div/select/option[2] 
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[3]/div/input    03:30PM
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[4]/div/input    12/22/2022
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[5]/div/input    13/24/2022
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[6]/div/textarea    user-tester pet
    Sleep    2s
    Click Button    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    2s
    Go To    https://petsarakham-online.tech/my-booking
    Sleep    2s
    Close Browser



TC-Cancel Booking
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Login
    Sleep     1s
    Click Element    //*[@id="header"]/nav/ul/li[6]
    Sleep    1s
    Click Element    //*[@id="header"]/nav/ul/li[6]/ul/li[5]/a
    Sleep    1s
    Click Element    //*[@id="header"]/nav/ul/li[6]/ul/li[5]/ul/li[2]/a
    Sleep    1s
    Click Button    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/div/div/table/tbody/tr/td[8]/button
    Handle Alert    accept    = ok
    #Handle Alert    dismiss    = cancel
    Sleep    1s
    Go To    https://petsarakham-online.tech/my-booking-canceled
    Sleep    2s
    Close Browser



    