*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        http://127.0.0.1:8000

*** Keywords ***

*** Test Cases ***
TC001
    #    valid email and valid password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    5s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Input Text         //*[@id="email"]    jojo@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep     3s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button    
    Close Browser

TC002
    #    empty email and empty password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    5s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep    3s    
    Close Browser

TC003
    #    valid email and empty password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    3s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Input Text         //*[@id="email"]    jojo@gmail.com 
    Sleep     3s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button 
    Sleep    2s   
    Close Browser

TC004
    #    empty email and valid password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    3s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Input Password         //*[@id="password"]    123456789
    Sleep    2s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button 
    Sleep    2s   
    Close Browser

TC005
    #    valid email and invalid password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    3s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Input Text         //*[@id="email"]    jojo@gmail.com 
    Sleep     3s
    Input Password    //*[@id="password"]       124525451
    Sleep    2s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep    2s    
    Close Browser

TC006
    #    invalid email and invalid password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    3s
    Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    Sleep    2s 
    Input Text         //*[@id="email"]    jojo55@gmail.com 
    Sleep     3s
    Input Password    //*[@id="password"]       124525451
    Sleep    2s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep    2s    
    Close Browser