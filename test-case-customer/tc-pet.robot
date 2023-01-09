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
${url}        https://petsarakham-online.tech


*** Keywords ***
Login 
    Input Text         //*[@id="email"]    service-tester@gmail.com
    Input Password      //*[@id="password"]    123456789
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    
*** Test Cases ***
TC-Add a Pet
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Login
    Sleep     1s
    Click Element    //*[@id="header"]/nav/ul/li[6]/a
    Sleep    1s
    Click Element     //*[@id="header"]/nav/ul/li[6]/ul/li[7]/a
    Sleep    1s
    Click Link    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[1]/div/div[2]/a
    Sleep    1s
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[1]/div/input    jojo2
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[2]/div/input    cat
    Input Text    name:age    2years
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[4]/div/input    5 kg.
    Sleep   1s
    Choose File        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[5]/div/input      C:/Users/AVSKS/Desktop/Rb-fm-test/img/test.png        
    Sleep    1s
    Click Button    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    1s
    Go To    https://petsarakham-online.tech/pet-all
    Sleep    2s    
    Close Browser


TC-Update a Pet
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Login
    Sleep     3s
    Click Element    //*[@id="header"]/nav/ul/li[6]/a
    Sleep    2s
    Click Element     //*[@id="header"]/nav/ul/li[6]/ul/li[7]/a
    Sleep    2s
    Click Link    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[1]/div/div[2]/a
    Sleep    2s
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[1]/div/input    dog-jojo
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[2]/div/input    dog
    Input Text    name:age    3years
    Input Text    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[4]/div/input    8 kg.
    Sleep   2s
    Choose File        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[5]/div/input      C:/Users/AVSKS/Desktop/Rb-fm-test/img/test.png        
    Sleep    2s
    Click Button    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    2s
    Go To    https://petsarakham-online.tech/pet-all
    Sleep    2s    
    Close Browser


TC-Delete a Pet
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Login
    Sleep     1s
    Click Element    //*[@id="header"]/nav/ul/li[6]
    Sleep    1s
    Click Element     //*[@id="header"]/nav/ul/li[6]/ul/li[7]
    Sleep    1s
    Click Element    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/div/div/table/tbody/tr[2]/td[6]/a[2]
    Sleep    1s
    Handle Alert    accept
    Close Browser

