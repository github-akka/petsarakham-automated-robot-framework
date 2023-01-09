*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}       https://petsarakham-online.tech/register
${BROWSER}        CHROME


*** Keywords ***


*** Test Cases ***

tc-user register with password less than 8 chars
    Open Browser        ${URL}        ${BROWSER}
    Maximize Browser Window
    Sleep        1.5s
    Select From List By Index        //*[@id="registeras"]        1
    Input Text        name        user-tester
    Input Text        email        user-tester@gmail.com
    Input Text        address        msu
    Input Text        phone        0987654321
    Input Password        password         1234
    Input Password        password-confirm         1234
    Wait Until Element Is Visible        password-confirm
    Click Button        //*[@id="userregisterationform"]/div[8]/div/button
    Sleep        2s
    Close Browser

tc-user register with confirm-password not match
    Open Browser        ${URL}        ${BROWSER}
    Maximize Browser Window
    Sleep        1.5s
    Select From List By Index        //*[@id="registeras"]        1
    Input Text        name        user-tester
    Input Text        email        user-tester@gmail.com
    Input Text        address        msu
    Input Text        phone        0987654321
    Input Password        password         123456789
    Input Password        password-confirm         1234567890
    Wait Until Element Is Visible        password-confirm
    Click Button        //*[@id="userregisterationform"]/div[8]/div/button
    Sleep        2s
    Close Browser    

tc-user register
    Skip
    Open Browser        ${URL}        ${BROWSER}
    Maximize Browser Window
    Sleep        1.5s
    Select From List By Index        //*[@id="registeras"]        1
    Input Text        name        user-tester
    Input Text        email        user-tester@gmail.com
    Input Text        address        msu
    Input Text        phone        0987654321
    Input Password        password         123456789
    Input Password        password-confirm         123456789
    Wait Until Element Is Visible        password-confirm
    Click Button        //*[@id="userregisterationform"]/div[8]/div/button
    Sleep        2s
    Close Browser  
    
    

    

