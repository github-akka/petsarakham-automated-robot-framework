*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        https://petsarakham-online.tech/login

*** Keywords ***
Login
    Input Text         //*[@id="email"]    admin@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button 

*** Test Cases ***
TC valid email and valid password
    #Skip
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    #Click Link  //*[@id="header"]/nav/ul/li[7]/a 
    #Wait Until Element Is Visible     //*[@id="header"]/nav/ul/li[7]/a
    Login
    Sleep     2s   
    Close Browser

TC empty email and empty password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep    2s    
    Close Browser

TC valid email and empty password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Input Text         //*[@id="email"]    admin@gmail.com 
    Sleep     1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button 
    Sleep    2s   
    Close Browser

TC empty email and valid password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Input Password         //*[@id="password"]    123456789
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button 
    Sleep    1s   
    Close Browser

TC valid email and invalid password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    1s
    Input Text         //*[@id="email"]    admin@gmail.com 
    Input Password    //*[@id="password"]       124525451
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep    1s    
    Close Browser

TC invalid email and invalid password
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Input Text         //*[@id="email"]    admin55@gmail.com 
    Input Password    //*[@id="password"]       124525451
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep    2s    
    Close Browser