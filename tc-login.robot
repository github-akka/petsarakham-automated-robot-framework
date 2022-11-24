*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        http://127.0.0.1:8000

*** Keywords ***
Login
    Input Text         //*[@id="email"]    jojo@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button 

*** Test Cases ***
TC001
    #    valid email and valid password
    #Skip
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Wait Until Element Is Visible     //*[@id="header"]/nav/ul/li[7]/a
    Login
    Sleep     1s   
    Close Browser

TC002
    #    empty email and empty password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Wait Until Element Is Visible    //*[@id="header"]/nav/ul/li[7]/a 
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep    2s    
    Close Browser

TC003
    #    valid email and empty password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Wait Until Element Is Visible     //*[@id="header"]/nav/ul/li[7]/a
    Input Text         //*[@id="email"]    jojo@gmail.com 
    Sleep     1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button 
    Sleep    2s   
    Close Browser

TC004
    #    empty email and valid password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Wait Until Element Is Visible    //*[@id="header"]/nav/ul/li[7]/a 
    Input Password         //*[@id="password"]    123456789
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button 
    Sleep    1s   
    Close Browser

TC005
    #    valid email and invalid password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    1s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Wait Until Element Is Visible    //*[@id="header"]/nav/ul/li[7]/a 
    Input Text         //*[@id="email"]    jojo@gmail.com 
    Input Password    //*[@id="password"]       124525451
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep    1s    
    Close Browser

TC006
    #    invalid email and invalid password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Wait Until Element Is Visible    //*[@id="header"]/nav/ul/li[7]/a 
    Input Text         //*[@id="email"]    jojo55@gmail.com 
    Input Password    //*[@id="password"]       124525451
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep    1s    
    Close Browser