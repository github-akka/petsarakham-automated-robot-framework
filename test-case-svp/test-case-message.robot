*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        http://127.0.0.1:8000

*** Keywords ***
Login
    Input Text         //*[@id="email"]    pompam2@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button   

*** Test Cases ***
TC-Send-Message
    
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    1.5s
    Go To       http://127.0.0.1:8000/login
    Sleep    1s 
    Login
    Sleep     2s
    Click Element      //*[@id="header"]/nav/ul/li[6]/a
    Sleep    0.5s
    Click Element      //*[@id="header"]/nav/ul/li[6]/ul/li[6]/a
    Sleep    2s
    Input Text         //html/body/div[1]/div[1]/div[1]/input    admin
    Sleep    1s
    Click Element      //html/body/div[1]/div[1]/div[2]/div[3]/div/table/tbody/tr/td[2]
    sleep    1s
    Input Text       //*[@id="message-form"]/textarea    Hi Admin
    Sleep    1s
    Click Button      //*[@id="message-form"]/button
    Sleep    3s    
    Close Browser

Test-case delete a conversation
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    1.5s
    Go To       http://127.0.0.1:8000/login
    Sleep    1s 
    Login
    Sleep     2s
    Click Element      //*[@id="header"]/nav/ul/li[6]/a
    Sleep    0.5s
    Click Element      //*[@id="header"]/nav/ul/li[6]/ul/li[6]/a
    Sleep    2s
    Input Text         //html/body/div[1]/div[1]/div[1]/input    admin
    Sleep    1s
    Click Element      //html/body/div[1]/div[1]/div[2]/div[3]/div/table/tbody/tr/td[2]
    Sleep    1s
    Click Element        //html/body/div[1]/div[3]/div[2]/a
    Sleep        0.8s
    Click Element        //html/body/div[3]/div/div/div[3]/a[2]
    Sleep     2.5s
    Close Browser   
    
    