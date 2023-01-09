*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        https://petsarakham-online.tech

*** Keywords ***
Login 
    Input Text         //*[@id="email"]    jojo@gmail.com
    Input Password      //*[@id="password"]    123456789
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button   

*** Test Cases ***
TC-Send-Message
    
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Go To     https://petsarakham-online.tech/login
    Sleep    1s 
    Login
    Sleep     2s
    Click Element    //*[@id="header"]/nav/ul/li[6]/a
    Sleep    0.5s
    Click Element    //*[@id="header"]/nav/ul/li[6]/ul/li[6]/a
    Sleep    2s
    Input Text        //html/body/div[1]/div[1]/div[1]/input    admin
    Sleep    1s
    Click Element     //html/body/div[1]/div[1]/div[2]/div[3]/div/table/tbody/tr/td[2]
    sleep    1s
    Input Text    //*[@id="message-form"]/textarea    Hello Admin
    Sleep    1s
    Click Button    //*[@id="message-form"]/button
    Sleep    2s    
    Close Browser    
    
    