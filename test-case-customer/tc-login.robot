*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        https://petsarakham-online.tech

*** Keywords ***
Login
    Input Text         //*[@id="email"]    user-tester@gmail.com
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
    Input Text         //*[@id="email"]    user-tester@gmail.com 
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
    Input Text         //*[@id="email"]    user-tester@gmail.com 
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
    Input Text         //*[@id="email"]    user-tester55@gmail.com 
    Input Password    //*[@id="password"]       124525451
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep    1s    
    Close Browser