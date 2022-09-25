*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        http://127.0.0.1:8000

*** Keywords ***
Login 
    Input Text         //*[@id="email"]    jojo@gmail.com
    Input Password      //*[@id="password"]    123456789
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button   

*** Test Cases ***
TC001
    
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    5s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Login
    Sleep     3s
    Click Element    //*[@id="header"]/nav/ul/li[6]
    Sleep    1s
    Click Element    //*[@id="header"]/nav/ul/li[6]/ul/li[6]
    Sleep    3s
    Input Text        //html/body/div[1]/div[1]/div[1]/input    admin
    Sleep    2s
    Click Element     //html/body/div[1]/div[1]/div[2]/div[3]/div/table/tbody/tr/td[2]
    Sleep    3s
    Input Text    //*[@id="message-form"]/textarea    Hello Admin
    Sleep    2s
    Click Button    //*[@id="message-form"]/button
    Sleep    5s
    Click Element    //html/body/div[1]/div[3]/div[2]/a
    Sleep    2s
    Click Element    //html/body/div[3]/div/div/div[3]/a[2]
    Sleep    2s
    Click Element    //html/body/div[1]/div[1]/div[1]/nav/nav/a[1]
    Sleep    3s
    Click Element    //*[@id="update-settings"]/div[2]/div[2]/span[5]
    Sleep    2s
    Click Element    //*[@id="update-settings"]/div[3]/input
    Sleep    4s    
    Close Browser