*** Settings ***
Library        SeleniumLibrary
*** Variables ***
${URL}     https://petsarakham-online.tech/login
${Browser}      chrome

*** Keywords ***
Login
    Input Text         //*[@id="email"]    service-tester@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
    Sleep    0.5s

Search
    Open Browser        ${URL}        ${Browser}
    Maximize Browser Window    
    Sleep        1.5s
    Login
    Sleep    1s
    Input Text        q        DOG-SERVICE 001
    Sleep        1s

    

*** Test Cases ***
test-case search service
    Search
    Click Element        //*[@id="sform"]/input[3]
    Sleep    2s
    Close Browser
    