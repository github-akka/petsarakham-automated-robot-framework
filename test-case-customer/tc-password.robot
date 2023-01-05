*** Settings ***
Library        SeleniumLibrary
*** Variables ***
${URL1}     http://127.0.0.1:8000/login
${URL2}     http://127.0.0.1:8000/change/password 
${Browser}      chrome

*** Keywords ***
Login
    Input Text         //*[@id="email"]    jojo@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button

change-pwd
    Open Browser        ${URL1}        ${Browser}
    Maximize Browser Window    
    Sleep        1.5s
    Login
    Go To    ${URL2}
    Sleep        2s
    

*** Test Cases ***
test-case current valid pwd 
    change-pwd
    Input Password         //*[@id="current_password"]        123456789
    Input Password         new_password           1234567890
    Input Password         confirm_password        1234567890
    Wait Until Element Is Visible        confirm_password
    Click Button        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    2s
    Close Browser

test-case current invalid pwd
    change-pwd
    Input Password        current_password        1234567899
    Input Password        new_password           1234567890
    Input Password        confirm_password        1234567890
    Wait Until Element Is Visible        confirm_password
    Click Button        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    2s
    Close Browser

test-case new-pwd and confirm pwd not match
    change-pwd
    Input Password        current_password        123456789
    Input Password        new_password           1234567890
    Input Password        confirm_password        1234567000
    Wait Until Element Is Visible        confirm_password
    Click Button        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    2s
    Close Browser

test-case new-pwd less than 8 chars
    change-pwd
    Input Password        current_password        123456789
    Input Password        new_password           123456
    Input Password        confirm_password        123456
    Wait Until Element Is Visible        confirm_password
    Click Button        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    2s
    Close Browser
    
