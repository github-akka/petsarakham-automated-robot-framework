*** Settings ***
Library        SeleniumLibrary

*** Variables ***


*** Keywords ***


*** Test Cases ***
tc-forgot password
    Open Browser        https://petsarakham-online.tech/login        chrome
    Maximize Browser Window
    Sleep        1s
    Click Link        //*[@id="userloginform"]/div[4]/div/a
    Sleep        1s
    Input Text         email          kingpower2535@gmail.com
    Wait Until Element Is Visible        email
    Click Button        //html/body/div/div/div[2]/form/div[2]/button
    Sleep        3.5s
    Close Browser